class CreatePlaceCategories < ActiveRecord::Migration[7.1]
  
  # - - - </> [UP] </> - - - #
  def up

    # - - - </> [CREATE] </> - - - #
    create_table :place_categories do |t|
      t.references :place, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

  end

  # - - - </> [DOWN] </> - - - #
  def down

    # - - - </> [REMOVE] </> - - - #
    drop_table :place_categories

  end

end
