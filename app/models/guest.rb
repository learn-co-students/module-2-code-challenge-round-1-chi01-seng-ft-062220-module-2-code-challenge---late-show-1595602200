class Guest < ApplicationRecord
    has_many :appearences
    has_many :episodes, through: :appearences
end
