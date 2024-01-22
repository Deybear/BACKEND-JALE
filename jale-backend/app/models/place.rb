class Place < ApplicationRecord

    # - - - </> [NAME] </> - - - #
    validates :place_name, presence: true

    # - - - </> [DESC] </> - - - #
    validates :place_desc, presence: true

    # - - - </> [COST] </> - - - #
    validates :place_cost, presence: true

    # - - - </> [EMAIL] </> - - - #
    validates :place_email, presence: true

    # - - - </> [SCORE] </> - - - #
    validates :place_score, presence: true

    # - - - </> [PHONE] </> - - - #
    validates :place_phone, presence: true

    # - - - </> [WEBSITE] </> - - - #
    validates :place_website, presence: true

    # - - - </> [ADDRESS] </> - - - #
    validates :place_address, presence: true

    # - - - </> [TIME] </> - - - #
    validates :place_time_open, presence: true

    # - - - </> [TIME] </> - - - #
    validates :place_time_close, presence: true

    # - - - </> [PLACE] <=> [CATEGORY] </> - - - #
    has_many :place_categories, dependent: :destroy
    has_many :categories, through: :place_categories

    # - - - </> [PLACE] <=> [REVIEW] </> - - - #
    has_many :place_reviews, dependent: :destroy
    has_many :reviews, through: :place_reviews

    # - - - </> [PLACE] <=> [PHOTO] </> - - - #
    has_many :photos

    # - - - </> [PLACE] <=> [LOCATION] </> - - - #
    has_one :place_location

end
