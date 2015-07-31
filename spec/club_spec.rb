require "spec_helper"

describe Club do

  it {should validate_presence_of(:title)}

  it {should validate_presence_of(:description)}
  it {should validate_length_of(:description).is_at_least(30)}

  it {should validate_presence_of(:location)}

  #Paperclip
  it { should have_attached_file(:image) }
  it { should validate_attachment_content_type(:image).
                allowing('image/png', 'image/gif').
                rejecting('text/plain', 'text/xml') }
end
