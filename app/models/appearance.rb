class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :guest, uniqueness: true, if: :already_appeared
    validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}

    def already_appeared
        self.guest.episodes.include?(Episode.find(self.episode.id))
    end
end
