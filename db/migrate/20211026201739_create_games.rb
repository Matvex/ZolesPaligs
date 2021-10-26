class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.references :user, index: true
      t.string :player0_name
      t.string :player1_name
      t.string :player2_name
      t.string :player3_name
      t.boolean :four_players
      t.boolean :pules

      t.timestamps
    end
  end
end
