class Client < ActiveRecord::Base
  validates :name, :image, presence: true
end
