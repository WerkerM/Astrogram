require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

  let(:astronaut) {User.new(name: "Philip K. Chapman", username: "philip", email: "philchappy@nasa.gov", password: "password", password_confirmation: "password", astronaut: true, confirmed: true)}
  let(:earthling) {User.new(name: "Mary Elizabeth Masterson", username: "marymaster", email: "mary@masterson.com", password: "password", password_confirmation: "password", confirmed: true)}
  let(:bad_user) {User.new(name: "George Costanza", username: "huehuehehuehue", email: "georgehatesclowns@gmail.com", password: "asdf", password_confirmation: "asdf", confirmed: false)}

  before(:each) do
    User.destroy_all
    allow(controller).to receive(:current_user).and_return(astronaut)
  end

  it "shows the signup page" do
    get :new
    expect(response).to render_template(:new)
  end

  context "a valid user was created" do
  it "redirects to the user path" do
    post :create, params: { user: { name: "Joe", username: "joey", email: "joe@joe.com", password: "pass", password_confirmation: "pass", email_token: "I am token hear me roar"} }
    expect(response).to redirect_to user_path(User.last)
  end
end

context "an invalid user was created" do

end

end
