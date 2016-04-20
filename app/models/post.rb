class Post < ActiveRecord::Base
  validates :title, :image, :body
end
