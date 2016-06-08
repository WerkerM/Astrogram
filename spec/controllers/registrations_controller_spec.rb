require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do

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

  context "when the user is an astronaut" do

  end
end
