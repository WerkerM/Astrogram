require 'rails_helper'

RSpec.describe Follow, type: :model do

  # has both a user and an astronaut
  # its astronaut is actually an astronaut
  let(:new_astronaut) { User.create!(name: "Astroboy", username: "Best_Astronaut_Ever", astronaut: true, password: "asdf", email: "legitemail@email.com") }
  let(:new_earthling) { User.create!(name: "Muggle1", username: "Cobbler", astronaut: false, password: "asdf", email: "legitemail@email.com") }
  let(:new_follow) { Follow.create(user: new_earthling, astronaut: new_astronaut) }
  let(:bad_follow) { Follow.new(user: new_astronaut, astronaut: new_earthling) }

  context "astronaut is an astronaut" do
    it "belongs to a user" do
      expect(new_follow.user).to eq(new_earthling)
    end

    it "belongs to an astronaut" do
      expect(new_follow.astronaut).to eq(new_astronaut)
    end
  end

  context "astronaut is a regular user" do
    it "isn't valid" do
      expect(bad_follow.save).to be_falsey
    end
    
  end
end