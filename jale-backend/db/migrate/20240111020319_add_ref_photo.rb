class AddRefPhoto < ActiveRecord::Migration[7.1]

  # - - - </> [CHANGE] </> - - - #
  def change

    # - - - </> [REF] </> - - - #
    add_reference(:photos, :place, foreign_key: true)

  end
  
end
