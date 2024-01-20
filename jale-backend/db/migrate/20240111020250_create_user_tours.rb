class CreateUserTours < ActiveRecord::Migration[7.1]
  
  # - - - </> [UP] </> - - - #
  def up

    # - - - </> [CREATE] </> - - - #
    create_table :user_tours do |t|
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end

  end

  # - - - </> [DOWN] </> - - - #
  def down

    # - - - </> [REMOVE] </> - - - #
    drop_table :user_tours

  end

end
