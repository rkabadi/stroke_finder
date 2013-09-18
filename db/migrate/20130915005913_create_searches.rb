class CreateSearches < ActiveRecord::Migration
  def change

    #drop_table :shots
    create_table :shots do |t|
      t.integer :shot_id
      t.string :name

      t.timestamps
    end

    #drop_table :hands
    create_table :hands do |t|
      t.integer :hand_id
      t.string :name
      t.integer :shot_id

      t.timestamps
    end
    #drop_table :grips
    create_table :grips do |t|
      t.integer :grip_id
      t.string :name
      t.integer :shot_id

      t.timestamps
    end
    #drop_table :spins
    create_table :spins do |t|
      t.integer :spin_id
      t.string :name
      t.integer :shot_id

      t.timestamps
    end

    #drop_table :players
    create_table :players do |t|
      t.integer :player_id
      t.string :name

      t.timestamps
    end

    #drop_table :strokes
    create_table :strokes do |t|
      t.integer :shot_id
      t.integer :hand_id
      t.integer :grip_id
      t.integer :spin_id
      t.string :link
      t.integer :player_id

      t.timestamps
    end

    #drop_table :searches
    create_table :searches do |t|
      t.string :name
      t.integer :shot_id
      t.integer :hand_id
      t.integer :grip_id
      t.integer :spin_id

      t.timestamps
    end

    forehand = Shot.create name:'Forehand'
    backhand = Shot.create name:'Backhand'
    serve = Shot.create name:'Serve'
    volley = Shot.create name:'Volley'

    #right_forehand
    Hand.create name: 'Right', shot: forehand
    #left_forehand
    Hand.create name: 'Left', shot: forehand
    #right_backhand
    Hand.create name: 'Right', shot: backhand
    #left_backhand
    Hand.create name: 'Left', shot: backhand
    #right_serve
    Hand.create name: 'Right', shot: serve
    #left_serve
    Hand.create name: 'Left', shot: serve
    #right_volley
    Hand.create name: 'Right', shot: volley
    #left_volley
    Hand.create name: 'Left', shot: volley

    #continental_forehand
    Grip.create name: 'Continental', shot: forehand
    #eastern_forehand
    Grip.create name: 'Eastern', shot: forehand
    #semi_western_forehand
    Grip.create name: 'Semi-Western', shot: forehand
    #western_forehand
    Grip.create name: 'Western', shot: forehand
    #one_handed_backhand
    Grip.create name: 'One-Handed', shot: backhand
    #two_handed_backhand
    Grip.create name: 'Two-Handed', shot: backhand
    #continental_serve
    Grip.create name: 'Continental', shot: serve
    #continental_volley
    Grip.create name: 'Continental', shot: volley

    #flat forehand
    Spin.create name: 'Flat', shot: forehand
    #topspin_forehand
    Spin.create name: 'Topspin', shot: forehand
    #slice_forehand
    Spin.create name: 'Slice', shot: forehand
    #flat backhand
    Spin.create name: 'Flat', shot: backhand
    #topspin_backhand
    Spin.create name: 'Topspin', shot: backhand
    #slice_backhand
    Spin.create name: 'Slice', shot: backhand
    #flat serve
    Spin.create name: 'Flat', shot: serve
    #kick_serve
    Spin.create name: 'Topspin', shot: serve
    #slice_serve
    Spin.create name: 'Slice', shot: serve
    #flat_volley
    Spin.create name: 'Flat', shot: volley


  end
end
