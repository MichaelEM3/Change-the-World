require 'rails_helper'

RSpec.describe 'Creating a club' do
  before(:each) do
      visit('/signup')
        fill_in('Username', with: 'Tester10')
        fill_in('Name', with: 'Test')
        fill_in('Email', with: 'test@test.com')
        fill_in('Password', with: 'Testing')
      click_button('Create User')
  end
  it 'should be at clubs/new' do
      visit('/clubs/new')
      expect(current_path).to be == '/login'
  end
end
