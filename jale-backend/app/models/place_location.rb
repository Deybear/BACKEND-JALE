class PlaceLocation < ApplicationRecord

    # - - - </> [LAT] </> - - - #
    validates :place_lat, presence: true

    # - - - </> [LON] </> - - - #
    validates :place_lon, presence: true

    # - - - </> [EVENT] </> - - - #
    has_one :place

end
