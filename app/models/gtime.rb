class Gtime < ApplicationRecord
    validates :startTime, presence: true
    belongs_to :user
    belongs_to :category
end
