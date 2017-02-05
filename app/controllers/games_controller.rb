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
    # @game_player1 = GamePlayer.new(@game.id, @game.player1_id)
    # @game_player2 = GamePlayer.new(@game.id, @game.player2_id)
    @game.points

    if @game.save
      @game.players << Player.find(@game.player1_id)
      @game.players << Player.find(@game.player2_id)
      params = {}
      redirect_to games_url
    else
      render :new
    end
  end
  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    # @game_player1 = GamePlayer.find_by_game_id_and_player_id(@game.id, @game.player1_id)
    # @game_player2 = GamePlayer.find_by_game_id_and_player_id(@game.id, @game.player2_id)
    if @game.update_attributes(game_params)
      # && @game_player1.update_attributes(gameplayer1) && @game_player2.update_attributes(gameplayer2)
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

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_url
  end

  private

  def game_params
    params.require(:game).permit(:player1_id, :player2_id, :gamedate, :p1points, :p2points)
  end
  # def gameplayer1
  #   params.require(:game).permit(:id, :player1_id)
  # end
  # def gameplayer2
  #   params.require(:game).permit(:id, :player2_id)
  # end

end
