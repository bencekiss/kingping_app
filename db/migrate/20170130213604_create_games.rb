class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.date :gamedate
      t.integer :player1_id
      t.integer :player2_id
      t.integer :p1points
      t.integer :p2points

      t.timestamps
    end
  end
end
