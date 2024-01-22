class AddRefEventLocation < ActiveRecord::Migration[7.1]

  # - - - </> [CHANGE] </> - - - #
  def change

    # - - - </> [REF] </> - - - #
    add_reference(:event_locations, :event, foreign_key: true)
  
  end

end
