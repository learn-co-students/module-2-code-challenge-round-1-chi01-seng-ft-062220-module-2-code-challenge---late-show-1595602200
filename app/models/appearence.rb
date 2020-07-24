class Appearence < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, inclusion: { in: 1..5 , message: "must be 1-5, 1 being the worst and 5 being the best"}
    validates :guest_id, uniqueness: { accepts: true, message: " has already appeared on this show"}
end
