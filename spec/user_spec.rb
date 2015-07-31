require 'spec_helper'

describe User do

  it {should validate_presence_of(:name)}
  it {should validate_length_of(:name).is_at_least(2)}

  it {should validate_presence_of(:username)}
  it {should validate_length_of(:username).is_at_least(2)}

  it {should validate_presence_of(:email)}
  it {should validate_length_of(:email).is_at_least(2)}

  it {should validate_presence_of(:password)}
  it {should validate_length_of(:password).is_at_least(2)}

  it {should validate_presence_of(:password_confirmation)}
  it {should validate_length_of(:password_confirmation).is_at_least(2)}

  it {should validate_confirmation_of(:password)}

  it {should validate_uniqueness_of(:email)}

end
