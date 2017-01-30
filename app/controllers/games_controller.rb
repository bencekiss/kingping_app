class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  def new
    @game = Game.new
    @players = Player.all
  end

  def create
    @game = Game.new(game_params)
    @game_player1 = GamePlayer.new(player1_params)
    @game_player2 = GamePlayer.new(player2_params)
    if @game.save
      redirect_to games_url
    else
      redirect_to new_game_url
    end
  end

  private

  def game_params
    params.require(:game).permit(:player1_id, :player2_id, :gamedate, :p1points, :p2points)
  end
  def player1_params
    params.require(:game).permit(:id, :player1_id)
  end
  def player2_params
    params.require(:game).permit(:id, :player2_id)
  end
end
