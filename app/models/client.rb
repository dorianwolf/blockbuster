class Client < ActiveRecord::Base
  validates :name, :image, presence: trues
end
