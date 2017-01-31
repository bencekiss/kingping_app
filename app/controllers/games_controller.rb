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
    @game_player1 = GamePlayer.new(@game.id, @game.player1_id)
    @game_player2 = GamePlayer.new(@game.id, @game.player2_id)
    if @game.save
      redirect_to games_url
    else
      redirect_to new_game_url
    end
  end
  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(games_params)
      redirect_to "/games/#{@game.id}"
    else
      render :edit
    end
  end

  def show
    @game = Game.find(params[:id])
    @player1 = Player.find(@game.player1_id)
    @player2 = Player.find(@game.player2_id)
  end

  private

  def game_params
    params.require(:game).permit(:player1_id, :player2_id, :gamedate, :p1points, :p2points)
  end

end
