require "rails_helper"

RSpec.describe "Logging in" do
	it "logged in successfully" do
		visit (root_path)
		fill_in('Username', with: 'Tester10')
		fill_in('Password', with: 'Testing')
		click_button('Log in')
	end
end
