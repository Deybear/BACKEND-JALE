class CreatePlaces < ActiveRecord::Migration[7.1]
  
  # - - - </> [UP] </> - - - #
  def up

    # - - - </> [CREATE] </> - - - #
    create_table :places do |t|
      t.string :place_name
      t.string :place_desc
      t.float :place_cost
      t.string :place_email
      t.integer :place_score
      t.string :place_phone
      t.string :place_website
      t.string :place_address
      t.time :place_time_open
      t.time :place_time_close

      t.timestamps
    end

  end

  # - - - </> [DOWN] </> - - - #
  def down

    # - - - </> [REMOVE] </> - - - #
    drop_table :places

  end

end
