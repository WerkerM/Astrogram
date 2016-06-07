require 'rails_helper'

RSpec.describe User, type: :model do

  let(:new_astronaut) { User.create!(name: "Astroboy", username: "Best_Astronaut_Ever", astronaut: true, password: "asdf", email: "legitemail@email.com") }
  let(:new_earthling) { User.create!(name: "Muggle1", username: "Cobbler", astronaut: false, password: "asdf", email: "legitemail@email.com", email_token: "amazing email token, oh yeah!") }
  let(:new_post) { Post.create!(content: "I'm a great post", astronaut: new_astronaut) }
  let(:bad_post) { Post.new(content: "I'm a horrible post", astronaut: new_earthling) }
  let(:new_follow) { Follow.create(user: new_earthling, astronaut: new_astronaut) }
  let(:bad_follow) { Follow.new(user: new_astronaut, astronaut: new_earthling) }

  it "can set an email confirmation token once" do
    new_astronaut.send(:set_confirmation_token)
    expect(new_astronaut.email_token).to be_a(String)

    token = new_astronaut.email_token
    new_astronaut.send(:set_confirmation_token)
    expect(new_astronaut.email_token).to eq(token)
  end

  it "can validate its email" do
    new_astronaut.send(:validate_email)
    expect(new_astronaut.confirmed).to be_truthy
    expect(new_astronaut.email_token).to be_nil
  end

  context "is an astronaut" do
    it "knows its posts" do
      expect(new_astronaut.posts).to include(new_post)
    end

    it "can answer whether it's an astronaut" do
      expect(new_astronaut.astronaut?).to be_truthy
    end

    it "knows its follows" do
      expect(new_astronaut.followed).to include(new_follow)
    end
  end

  context "is a puny earthling" do
    it "cannot post" do
      expect(bad_post.save).to be_falsey
    end

    it "knows it isn't an astronaut" do
      expect(new_earthling.astronaut?).to be_falsey
    end

    it "cannot be followed" do
      expect(bad_follow.save).to be_falsey
    end
  end
end
