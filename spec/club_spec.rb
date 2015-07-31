require "spec_helper"

describe Club do
  it "has a title" do
    club = Club.new
    club.should respond_to(:title)
  end

  it {should validate_presence_of(:title)}

  it "has a description" do
    club = Club.new
    club.should respond_to(:description)
  end

  it {should validate_presence_of(:description)}
  it {should ensure_length_of(:description).is_at_least(30)}

  it "has a location" do
    club = Club.new
    club.should respond_to(:location)
  end

  it {should validate_presence_of(:location)}

end
