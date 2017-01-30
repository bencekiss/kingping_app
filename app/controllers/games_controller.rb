class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  def new
    @game = Game.new
    @players = Player.all
  end
end
