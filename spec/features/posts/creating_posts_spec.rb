require 'rails_helper'

describe "creating posts" do

  context "when the user is an astronaut" do

    it "shows a form for a new post" do
      visit user_path
      #check for the form
    end
  end

  context "when the user is an earthling" do

    it "does not show a form for a new post" do
      visit user_path
      #check for the form
    end
  end
end
