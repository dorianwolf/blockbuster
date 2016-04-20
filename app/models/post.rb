class Post < ActiveRecord::Base
  validates :title, :image, :body, presence: true
end
