class PlaceLocation < ApplicationRecord

    # - - - </> [LAT] </> - - - #
    validates :place_lat, presence: true

    # - - - </> [LON] </> - - - #
    validates :place_lon, presence: true

    # - - - </> [LINK] </> - - - #
    belongs_to :place

end
