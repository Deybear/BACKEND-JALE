class CreateEvents < ActiveRecord::Migration[7.1]
  
  # - - - </> [UP] </> - - - #
  def up

    # - - - </> [CREATE] </> - - - #
    create_table :events do |t|
      t.string :event_name
      t.string :event_desc
      t.float :event_cost
      t.string :event_email
      t.string :event_photo
      t.string :event_phone
      t.string :event_website
      t.string :event_address
      t.date :event_date_start
      t.time :event_time_start

      t.timestamps
    end

  end

  # - - - </> [DOWN] </> - - - #
  def down

    # - - - </> [REMOVE] </> - - - #
    drop_table :events

  end

end
