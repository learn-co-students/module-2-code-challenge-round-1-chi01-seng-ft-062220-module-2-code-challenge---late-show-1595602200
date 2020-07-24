class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    
    validates :rating, inclusion: {in: %w(1, 2, 3, 4, 5)}

end
