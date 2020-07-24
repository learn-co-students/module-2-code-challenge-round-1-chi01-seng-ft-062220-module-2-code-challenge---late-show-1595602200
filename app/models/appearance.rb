class Appearance < ApplicationRecord

    belongs_to :guest
    belongs_to :episode
    
    validates :rating, numericality: {greater_than: 0, less_than: 6}
    validate :once_per_show

    def once_per_show
        Appearance.all.each do |appearance|
            if appearance.episode_id == self.episode_id && appearance.guest_id == self.guest_id
                self.errors.add(:episode_id, "Guest can only appear once per episode.")
            end
        end
    end

end
