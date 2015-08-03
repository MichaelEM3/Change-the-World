require 'rails_helper'

RSpec.describe "stories/edit", type: :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      :club => nil,
      :title => "MyString",
      :story => "MyText"
    ))
  end

  it "renders the edit story form" do
    render

    assert_select "form[action=?][method=?]", story_path(@story), "post" do

      assert_select "input#story_club_id[name=?]", "story[club_id]"

      assert_select "input#story_title[name=?]", "story[title]"

      assert_select "textarea#story_story[name=?]", "story[story]"
    end
  end
end
