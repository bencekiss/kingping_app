class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to "/players"
    else
      render :new
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
   @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      redirect_to "/players/#{@player.id}:id"
    else
      render :edit
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to picutres_url

  end

  private
  def player_params
    params.require(:player).permit(:nickname, :name, :wins, :losses, :url)
  end

end
