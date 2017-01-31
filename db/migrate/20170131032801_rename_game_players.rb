class RenameGamePlayers < ActiveRecord::Migration[5.0]
  def change

    rename_table :game_players, :games_players
  end
end
