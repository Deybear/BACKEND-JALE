class EventLocation < ApplicationRecord

    # - - - </> [LAT] </> - - - #
    validates :event_lat, presence: true

    # - - - </> [LON] </> - - - #
    validates :event_lon, presence: true

    # - - - </> [EVENT] </> - - - #
    has_one :event

end
