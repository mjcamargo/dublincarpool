class Book < ApplicationRecord
  belongs_to :profile
  belongs_to :trip
end
