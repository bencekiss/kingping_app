class Player < ApplicationRecord
  has_and_belongs_to_many :games

  # has_many :game_players
  # has_many :games, through: :game_players
  def self.board
    score = 0
    board = []
    (Player.all).each do |player|
      if player.wins >= 1
        score = player.wins / (player.wins.to_f + player.losses.to_f)
        ind_score = [score, player.name, player.url]
        board << ind_score
      end
    end
    board.sort!
    board.reverse!
    board
  end

end
