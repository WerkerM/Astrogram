require 'rails_helper'

describe "viewing posts" do

  context "when the user is an astronaut" do

    it "shows all the posts" do
      visit posts_path
      #check for all the posts
    end

    it "shows only posts of followed astronauts" do
      visit root_path
      #check for posts of followed astronauts
      #check to make sure other posts aren't there
    end
  end

  context "when the user is an earthling" do

    it "shows all the posts" do
      visit posts_path
      #check for all the posts
    end

    it "shows only posts of followed astronauts" do
      visit root_path
      #check for posts of followed astronauts
      #check to make sure other posts aren't there
    end

  end
end
