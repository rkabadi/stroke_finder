class CreateStrokes < ActiveRecord::Migration
  def change
    drop_table :strokes
    create_table :strokes do |t|
      t.string :shot
      t.string :handedness
      t.string :grip
      t.string :spin
      t.string :link
      t.integer :player_id

      t.timestamps
    end
  end
end
