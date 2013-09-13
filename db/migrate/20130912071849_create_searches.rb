class CreateSearches < ActiveRecord::Migration
  def change
    #drop_table :players
    create_table :players do |t|
      t.integer :player_id
      t.string :name

      t.timestamps
    end

    #drop_table :strokes
    create_table :strokes do |t|
      t.string :shot
      t.string :handedness
      t.string :grip
      t.string :spin
      t.string :link
      t.integer :player_id

      t.timestamps
    end

    #drop_table :searches
    create_table :searches do |t|
      t.string :name
      t.string :shot
      t.string :handedness
      t.string :grip
      t.string :spin

      t.timestamps
    end

    Search.create shot:'Forehand', handedness:'Right', grip:'Continental', spin:'Topspin'
    Search.create shot:'Backhand', handedness:'Left', grip:'One Handed', spin:'Slice'
  end
end
