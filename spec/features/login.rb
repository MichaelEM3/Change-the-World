require "rails_helper"

Rspec.describe "Logging in" do
	it "log in successfully" do
		visit (root_path)

		click_link("Website")
		click_link("Login")

		fill_in('Username', with: 'test1')
		fill_in('Password', :with 'test')
		click_button('Log In')

		expect(page).to have_content('Signed in successfully')
	end
end
