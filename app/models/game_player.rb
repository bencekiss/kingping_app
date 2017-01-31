class GamePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :game

  def initialize(game_id, player_id)
    @game_id = game_id
    @player_id = player_id
  end
end
