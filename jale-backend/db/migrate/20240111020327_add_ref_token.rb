class AddRefToken < ActiveRecord::Migration[7.1]

  # - - - </> [CHANGE] </> - - - #
  def change

    # - - - </> [REF] </> - - - #
    add_reference(:tokens, :user, foreign_key: true)
  
  end

end
