class HeroPower < ApplicationRecord
    belongs_to :hero
    validates :strength, inclusion: { in: %w(Strong Weak Average)} 
    belongs_to :power
end
