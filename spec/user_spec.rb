require 'spec_helper'

describe User do
  it "has a name" do
    user = User.new
    user.should respond_to(:name)
  end

  it "has a username" do
    user = User.new
    user.should respond_to(:username)
  end

  it "has a email" do
    user = User.new
    user.should respond_to(:email)
  end

  it "has a password" do
    user = User.new
    user.should respond_to(:password)
  end

  it "has a password confirmation" do
    user = User.new
    user.should respond_to(:password_confirmation)
  end
end
