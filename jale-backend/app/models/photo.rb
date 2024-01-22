class Photo < ApplicationRecord

    # - - - </> [URL] </> - - - #
    validates :photo_url, presence: true, uniqueness: true

    # - - - </> [PHOTO] <=> [PLACE] </> - - - #
    belongs_to :place

end
