require "rails_helper"

RSpec.describe "Creating a club" do

before(:each) do
	visit ('/signup')
		fill_in('Username', with: 'Tester10')
		fill_in('Name', with: 'Test')
		fill_in('Email', with: 'test@test.com')
		fill_in('Password', with: 'Testing')
	click_button('Create User')
end
it 'should be at clubs/new' do 
	visit '/clubs/new'
	current_path.should == '/login'
	fill_in('title', with: 'hi')
	fill_in('description', with: "hivveigeuigiwrulghRwughriughuirghUWGHWIUI HFIEWHFIWE HIUWHFIEWFH WIUFHEIW FHEIWFHIUWEF")
 	fill_in('location', with: "miami")
 	click_button('Create Club')
	end
end

# before(:each) do
# visit ('/signup')
# fill_in('Username', with: 'Tester10')
# fill_in('Name', with: 'Test')
# fill_in('Email', with: 'test@test.com')
# fill_in('Password', with: 'Testing')
# click_button('Create User')
# end
# page.should have_content('New Club')
# click_link('Create a New Club')
# page.should have_content('New Clubslol')
# fill_in('title', with: 'TestClub')
# fill_in("description", with: "This is a test test test test test test test test")
# fill_in("location", with: "Testsville")
# click_button('Create Club')
# expect(page).to have_title("TestClub")
# end
