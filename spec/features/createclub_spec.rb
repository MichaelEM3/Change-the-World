require "rails_helper"

RSpec.describe "Creating a club" do
before do
visit (root_path)
fill_in('Username', with: 'Tester10')
fill_in('Password', with: 'Testing')
click_button('Log in')
end

it "created club successfully" do
visit '/clubs'
find_link('Create a New Club')[:href].should == '/clubs/new'
page.should have_content('New Club')
fill_in('Title', with: 'TestClub')
fill_in("Description", with: "This is a test test test test test test test test")
fill_in("Location", with: "Testsville")
click_button('Create Club')
# expect(page).to have_title("TestClub")
end
end