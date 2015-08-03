json.array!(@stories) do |story|
  json.extract! story, :id, :club_id, :title, :story
  json.url story_url(story, format: :json)
end
