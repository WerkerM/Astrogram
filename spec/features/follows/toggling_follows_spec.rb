require 'rails_helper'

describe "toggling follows", js: true do

  before(:all) do
    current_user = User.create!(name: 'Testerguy', username: 'Testerguyusername', email: 'flapjacks@breakfast.com', password: '1234', password_confirmation: '1234', confirmed: true, astronaut: false)
    login(current_user)
  end

  it "switches from follow to following" do
    visit '/astronauts'
    click_button 'follow'
    expect(page).to have_text('following')
  end

end
