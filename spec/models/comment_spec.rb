require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:new_astronaut) {User.create!(name: "Astroboy", username: "Best_Astronaut_Ever", astronaut: true, password: "asdf", email: "legitemail@email.com")}
  let(:new_earthling) {User.create!(name: "Muggle1", username: "Cobbler", astronaut: false, password: "asdf", email: "legitemail@email.com")}
  let(:new_post) {Post.create!(content: "I'm a great post", astronaut: new_astronaut)}
  let(:first_comment) {Comment.create!(content: "Cool photo!", post: new_post, user: new_earthling)}
  let(:second_comment) {Comment.create!(content: "You suck!", post: new_post, user: new_astronaut)}

  it 'knows which user wrote the comment' do
    expect(first_comment.user).to eq(new_earthling)
    expect(second_comment.user).to eq(new_astronaut)
  end

  it 'knows what post it belongs to' do
    expect(first_comment.post).to eq(new_post)
    expect(second_comment.post).to eq(new_post)
  end
end
