require "rails_helper"

RSpec.describe "Creating a club" do 
	it "created club successfully" do 
		visit ('/clubs/new')
		fill_in('Title', with: 'hi')


		# expect(page).to have_content('Joined Club successfully')
	end
end



