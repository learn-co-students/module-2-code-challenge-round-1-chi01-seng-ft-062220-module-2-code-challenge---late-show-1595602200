class Episode < ApplicationRecord
    has_many :appearences
    has_many :guests, through: :appearences
end
