class Post < ActiveRecord::Base
  validates :title, :image_url, :contents, presence: true
  validates :contents, length: { maximum: 5000 }
end
