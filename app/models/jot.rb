class Jot < ActiveRecord::Base
  has_attached_file :photo,
  styles: {
  medium: "300x300>" },
  default_url: "http://placehold.it/350x200"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
