class Contact < ActiveRecord::Base
  validates :name, :message, presence: true
  validates :email, email: true
end
