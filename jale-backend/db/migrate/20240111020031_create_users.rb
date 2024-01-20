class CreateUsers < ActiveRecord::Migration[7.1]
  
  # - - - </> [UP] </> - - - #
  def up

    # - - - </> [CREATE] </> - - - #
    create_table :users do |t|
      t.string :user_name
      t.string :user_lastname
      t.string :user_email
      t.string :password_digest
      t.date :user_birthdate

      t.timestamps
    end

  end

  # - - - </> [DOWN] </> - - - #
  def down

    # - - - </> [REMOVE] </> - - - #
    drop_table :users

  end

end
