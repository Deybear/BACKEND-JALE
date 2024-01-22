class AddRefPlaceLocation < ActiveRecord::Migration[7.1]

  # - - - </> [CHANGE] </> - - - #
  def change

    # - - - </> [REF] </> - - - #
    add_reference(:place_locations, :place, foreign_key: true)
  
  end
  
end
