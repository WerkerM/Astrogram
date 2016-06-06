require 'rails_helper'

RSpec.describe User, type: :model, do

  let(:new_astronaut) { User.create!(name: "Astroboy", username: "Best_Astronaut_Ever", astronaut: true, password: "asdf", email: "legitemail@email.com") }
  let(:new_earthling) { User.create!(name: "Muggle1", username: "Cobbler", astronaut: false, password: "asdf", email: "legitemail@email.com") }
  let(:new_post) { Post.create!(content: "I'm a great post", astronaut: new_astronaut) }

  context "is an astronaut" do
    it "knows its posts" do

    end
  end
end