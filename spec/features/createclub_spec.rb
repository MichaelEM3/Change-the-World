require 'rails_helper'

RSpec.describe "Creating a club" do

#sign in first 
before(:each) do
	visit ('/signup')
	fill_in('Username', with: 'Tester10')
	fill_in('Name', with: 'Test')
	fill_in('Email', with: 'test@test.com')
	fill_in('Password', with: 'Testing')
	click_button('Create User')
end
#do this
it 'should be at clubs/new' do 
	visit '/clubs/new'
	first('input[type="submit"]')
# selecting the first "button"
	current_path.should == '/login'
#leading to login page
	end
>>>>>>> secondtime
end

