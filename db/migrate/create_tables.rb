class CreateStrokes < ActiveRecord::Migration
  def change

    drop_table :players
    create_table :players do |t|
      t.string :name

      t.timestamps
    end

    drop_table :strokes
    create_table :strokes do |t|
      t.string :shot
      t.string :handedness
      t.string :grip
      t.string :spin
      t.string :link

      t.timestamps
    end
  end
end
