class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show

  end

  def destroy

  end

end
