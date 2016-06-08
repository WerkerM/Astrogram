
RSpec.describe UsersController, type: :controller do

  let(:astronaut) {User.new(name: "Philip K. Chapman", username: "philip", email: "philchappy@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)}
  let(:earthling) {User.new(name: "Mary Elizabeth Masterson", username: "marymaster", email: "mary@masterson.com", password: "password", password_confirmation: "password", confirmed: true)}
  let(:bad_user) {User.new(name: "George Costanza", username: "huehuehehuehue", email: "georgehatesclowns@gmail.com", password: "asdf", password_confirmation: "asdf", confirmed: false)}

  before(:each) do
    User.destroy_all
    allow(controller).to receive(:current_user).and_return(astronaut)
  end

  it "will show astronauts page" do
    get :astronauts
    expect(response).to render_template(:index)
  end

  it "will show earthlings page" do
    get :earthlings
    expect(response).to render_template(:index)
  end

  context "when user is an astronaut" do

    before(:each) do
      astronaut.save
    end

    it "can see a user profile" do
      get :show, params: {id: astronaut.id}
      expect(response).to render_template(:show)
    end
  end

  context "when user is an earthling" do
    before(:each) do
      earthling.save
    end

    it "can see a user profile" do
      get :show, params: {id: earthling.id}
      expect(response).to render_template(:show)
    end
  end

  context "when user has not verified their email" do
    before(:each) do
      bad_user.save
    end

    it "redirects to the root path with an alert" do
      get :show, params: {id: bad_user.id}
      expect(response).to redirect_to(root_path)
      expect(flash[:alert]).to eq("User does not exist.")
    end

    it "can confirm its email" do
      bad_user.gen_email_token
      bad_user.save
      get :confirm_email, params: {email_token: bad_user.email_token}
      expect(User.first.confirmed).to eq(true)
      expect(response).to redirect_to(bad_user)
    end
  end
end
