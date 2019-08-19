class Trip < ApplicationRecord
  has_many :books    
  has_many :profiles
end
