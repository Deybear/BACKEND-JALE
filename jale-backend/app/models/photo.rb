class Photo < ApplicationRecord

    # - - - </> [URL] </> - - - #
    validates :photo_url, presence: true

    # - - - </> [PHOTO] <=> [PLACE] </> - - - #
    belongs_to :place

end
