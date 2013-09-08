class CreateStrokes < ActiveRecord::Migration
  def change
    drop_table :strokes
    create_table :strokes do |t|
      t.integer :player_id
      t.string :shot
      t.string :handedness
      t.string :grip
      t.string :spin

      t.timestamps
    end
  end
end
