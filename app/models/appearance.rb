class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :rating, :numericality=> true, :inclusion => {:in => 1..5, :message => "should be between 1 and 5"}
end
