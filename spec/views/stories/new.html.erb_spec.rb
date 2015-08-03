require 'rails_helper'

RSpec.describe "stories/new", type: :view do
  before(:each) do
    assign(:story, Story.new(
      :club => nil,
      :title => "MyString",
      :story => "MyText"
    ))
  end

  it "renders new story form" do
    render

    assert_select "form[action=?][method=?]", stories_path, "post" do

      assert_select "input#story_club_id[name=?]", "story[club_id]"

      assert_select "input#story_title[name=?]", "story[title]"

      assert_select "textarea#story_story[name=?]", "story[story]"
    end
  end
end
