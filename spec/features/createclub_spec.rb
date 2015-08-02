# require "rails_helper"
#
# RSpec.describe "Creating a club" do
# 	before do
# 		visit ('/signup')
# 		fill_in('Username', with: 'Tester10')
# 		fill_in('Name', with: 'Test')
# 		fill_in('Email', with: 'test@test.com')
# 		fill_in('Password', with: 'Testing')
# 		click_button('Create User')
# 	end
#
# 	it "created club successfully" do
# 		visit '/clubs/new'
# 		# find_link('Create a New Club')[:href].should == '/clubs/new'
# 		# page.should have_content('New Club')
# 		# click_link('Create a New Club')
# 		page.should have_content('New Clubslol')
# 		fill_in('title', with: 'TestClub')
# 		fill_in("description", with: "This is a test test test test test test test test")
# 		fill_in("location", with: "Testsville")
# 		click_button('Create Club')
# 		# expect(page).to have_title("TestClub")
# 	end
# end
