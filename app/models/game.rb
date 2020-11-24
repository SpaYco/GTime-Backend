class Game < ApplicationRecord
  validates :name, presence: true
  validates :memory, presence: true
  validates :intelligence, presence: true
  validates :social, presence: true
  validates :link, presence: true
  validates_format_of :link, with: /\.(png|jpg|jpeg)\z/i
  has_many :measurements
end
