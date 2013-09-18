class CreateHands < ActiveRecord::Migration
  def change

    #drop_table :shots
    create_table :shots do |t|
      t.integer :shot_id
      t.string :name

      t.timestamps
    end

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
    Hand.create name: 'Right', shot_id: forehand.shot_id
    #left_forehand
    Hand.create name: 'Left', shot_id: forehand.shot_id
    #right_backhand
    Hand.create name: 'Right', shot_id: backhand.shot_id
    #left_backhand
    Hand.create name: 'Left', shot_id: backhand.shot_id
    #right_serve
    Hand.create name: 'Right', shot_id: serve.shot_id
    #left_serve
    Hand.create name: 'Left', shot_id: serve.shot_id
    #right_volley
    Hand.create name: 'Right', shot_id: volley.shot_id
    #left_volley
    Hand.create name: 'Left', shot_id: volley.shot_id

    #continental_forehand
    Grip.create name: 'Continental', shot_id: forehand.shot_id
    #eastern_forehand
    Grip.create name: 'Eastern', shot_id: forehand.shot_id
    #semi_western_forehand
    Grip.create name: 'Semi-Western', shot_id: forehand.shot_id
    #western_forehand
    Grip.create name: 'Western', shot_id: forehand.shot_id
    #one_handed_backhand
    Grip.create name: 'One-Handed', shot_id: backhand.shot_id
    #two_handed_backhand
    Grip.create name: 'Two-Handed', shot_id: backhand.shot_id
    #continental_serve
    Grip.create name: 'Continental', shot_id: serve.shot_id
    #continental_volley
    Grip.create name: 'Continental', shot_id: volley.shot_id

    #flat forehand
    Spin.create name: 'Flat', shot_id: forehand.shot_id
    #topspin_forehand
    Spin.create name: 'Topspin', shot_id: forehand.shot_id
    #slice_forehand
    Spin.create name: 'Slice', shot_id: forehand.shot_id
    #flat backhand
    Spin.create name: 'Flat', shot_id: backhand.shot_id
    #topspin_backhand
    Spin.create name: 'Topspin', shot_id: backhand.shot_id
    #slice_backhand
    Spin.create name: 'Slice', shot_id: backhand.shot_id
    #flat serve
    Spin.create name: 'Flat', shot_id: serve.shot_id
    #kick_serve
    Spin.create name: 'Topspin', shot_id: serve.shot_id
    #slice_serve
    Spin.create name: 'Slice', shot_id: serve.shot_id
    #flat_volley
    Spin.create name: 'Flat', shot_id: volley.shot_id


  end
end
