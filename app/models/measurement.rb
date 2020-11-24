class Measurement < ApplicationRecord
  validates :hours, presence: true
  validates :game_id, presence: true
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :game

  before_save do |m|
    game = m.game
    m.memory = game.memory * m.hours
    m.intelligence = game.intelligence * m.hours
    m.social = game.social * m.hours
  end
end
