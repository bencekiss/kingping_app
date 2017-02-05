class Game < ApplicationRecord

  has_and_belongs_to_many :players
  # has_many :game_players
  # has_many :players #, through: :game_players
  def points
    player1 = Player.find(self.player1_id)
    player2 = Player.find(self.player2_id)
    if self.p1points > self.p2points
      new_wins = player1.wins + 1
      Player.update(player1.id, wins: new_wins)
      new_losses = player2.losses + 1
      Player.update(player2.id, losses: new_losses)
    else
      new_wins = player2.wins + 1
      Player.update(player2.id, wins: new_wins)
      new_losses = player1.losses + 1
      Player.update(player1.id, losses: new_losses)
    end
  end

  def winner
    if self.p1points > self.p2points
      return Player.find(self.player1_id)
    else
      return Player.find(self.player2_id)
    end
  end
  def loser
    if self.p1points < self.p2points
      return Player.find(self.player1_id)
    else
      return Player.find(self.player2_id)
    end
  end

end
