class Profile < ApplicationRecord
  belongs_to :user
  has_many :books
  has_many :trips
end
