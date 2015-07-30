require 'spec_helper'

describe User do
  it "has a name" do
    user = User.new
    user.should respond_to(:name)
  end
end

describe User do
  it "has a username" do
    user = User.new
    user.should respond_to(:username)
  end
end

describe User do
  it "has a email" do
    user = User.new
    user.should respond_to(:email)
  end
end

describe User do
  it "has a password" do
    user = User.new
    user.should respond_to(:password)
  end
end

describe User do
  it "has a password confirmation" do
    user = User.new
    user.should respond_to(:password_confirmation)
  end
end
