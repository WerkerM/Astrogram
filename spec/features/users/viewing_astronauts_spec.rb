
describe "viewing astronauts", js: true do

  context "when the user is an astronaut" do

    it "shows all the astronauts" do
      visit astronauts_path
      #check for all the astronauts
    end
  end

  context "when the user is an earthling" do

    it "shows all the astronauts" do
      visit astronauts_path
      #check for all the earthlings
    end
  end
end
