class AddRefUser < ActiveRecord::Migration[7.1]

  # - - - </> [CHANGE] </> - - - #
  def change

    # - - - </> [REF] </> - - - #
    add_reference(:users, :user_type, foreign_key: true)

  end

end
