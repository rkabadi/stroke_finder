class CreateGrips < ActiveRecord::Migration
  def change
    create_table :grips do |t|
      t.integer :grip_id
      t.string :name
      t.integer :shot_id

      t.timestamps
    end
  end
end
