class CreateDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :deals do |t|

      t.integer :solist_nr
      t.boolean :win
      t.integer :severity
      t.boolean :zole
      t.references :game, index: true

      t.timestamps
    end
  end
end
