require "rails_helper"

RSpec.describe "Logging in" do 
	it "logged in successfully" do 
		visit (root_path)
		fill_in('Username', with: 'test3')
		fill_in('Password', with: 'test3')
		click_button('Log in')

		# expect(page).to have_content('Signed in successfully')
	end
end



