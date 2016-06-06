require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:new_astronaut) {User.create!(name: "Astroboy", username: "Best_Astronaut_Ever", astronaut: true, password: "asdf", email: "legitemail@email.com")}
  let(:new_earthling) {User.create!(name: "Muggle1", username: "Cobbler", astronaut: false, password: "asdf", email: "legitemail@email.com")}
  let(:new_post) {Post.create!(content: "I'm a great post", astronaut: new_astronaut)}
  let(:bad_post) {Post.new(content: "Earth is cool too!!!", astronaut: new_earthling)}

  context "when user is posting as an astronaut" do

    it 'knows its author' do
      expect(new_post.astronaut).to eq(new_astronaut)
    end

    let(:first_comment) {Comment.create!(content: "Cool photo!", post: new_post, user: new_earthling)}
    let(:second_comment) {Comment.create!(content: "You suck!", post: new_post, user: new_astronaut)}

    it 'knows its commment' do
      expect(new_post.comments).to include(first_comment, second_comment)
    end
  end

  context "when user is attempting to post as an earthling" do

    it "won't let non-astronaut make a post" do
      expect(bad_post.valid?).to be_falsey
    end
  end
end
