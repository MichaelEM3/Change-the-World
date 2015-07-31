require "spec_helper"

describe Club do
  it "has a title" do
    club = Club.new
    club.should respond_to(:title)
  end
end

describe Club do
  it "has a description" do
    club = Club.new
    club.should respond_to(:description)
  end
end

describe Club do
  it "has a location" do
    club = Club.new
    club.should respond_to(:location)
  end
end
