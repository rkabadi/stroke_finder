class CreatePlayers < ActiveRecord::Migration
  def change
    drop_table :players
    create_table :players do |t|
      t.string :name

      t.timestamps
    end
  end
end
