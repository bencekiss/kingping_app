class Game < ApplicationRecord

  has_and_belongs_to_many :players
  # has_many :game_players
  # has_many :players #, through: :game_players


end
