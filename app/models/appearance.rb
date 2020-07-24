class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: {greater_than: -1, less_than: 6, only_integer: true} 
end
