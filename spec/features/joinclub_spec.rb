require 'rails_helper'

RSpec.describe "Joining a club" do

#sign in first
before(:each) do
	visit ('/signup')
	fill_in('Username', with: 'Tester10')
	fill_in('Name', with: 'Test')
	fill_in('Email', with: 'test@test.com')
	fill_in('Password', with: 'Testing')
	click_button('Create User')
end
#do it
it 'should be at clubs/5' do
	visit ('/clubs/:id')
	first('input[type="submit"]')
# selecting the first "button"
	end
end
