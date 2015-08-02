require "rails_helper"

RSpec.describe "Signing Up" do
	it "signed in successfully" do
		visit ('/signup')
		fill_in('Username', with: 'Tester10')
		fill_in('Name', with: 'Test')
		fill_in('Email', with: 'test@test.com')
		fill_in('Password', with: 'Testing')
		click_button('Create User')
		# expect(page).to have_content('Signed up successfully')
	end
end
