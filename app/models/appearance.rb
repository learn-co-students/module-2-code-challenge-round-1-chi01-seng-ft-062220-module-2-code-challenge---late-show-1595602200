class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, presence: true 
    validates :rating, :inclusion => 1..5
    # validates :guest_id, uniqueness: true 

end
