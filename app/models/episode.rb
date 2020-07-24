class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        ratings = self.appearances.map {|appearance| appearance.rating}
        (ratings.sum) / (ratings.count.to_f).round(2)
    end
end
