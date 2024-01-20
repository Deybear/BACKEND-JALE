class CreateEventCategories < ActiveRecord::Migration[7.1]
  
  # - - - </> [UP] </> - - - #
  def up

    # - - - </> [CREATE] </> - - - #
    create_table :event_categories do |t|
      t.references :event, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

  end

  # - - - </> [DOWN] </> - - - #
  def down

    # - - - </> [REMOVE] </> - - - #
    drop_table :event_categories

  end

end
