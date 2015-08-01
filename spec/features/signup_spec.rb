require "rails_helper"

RSpec.describe "Signing Up" do
	it "log in successfully" do
		visit (root_path)
		click_link("Sign Up")
		fill_in('Username', with: 'test3')
		fill_in('Name', with: 'test3')
		fill_in('Email', with: 'test3@email.com')
		fill_in('Password', with: 'test3')
		click_button('Create User')
		#expect(page).to have_content('Signed up successfully')
	end
end
