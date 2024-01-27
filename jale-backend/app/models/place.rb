class Place < ApplicationRecord

    # - - - </> [NAME] </> - - - #
    validates :place_name, presence: true

    # - - - </> [DESC] </> - - - #
    validates :place_desc, presence: true

    # - - - </> [COST] </> - - - #
    validates :place_cost, presence: true, numericality: { only_integer: true }

    # - - - </> [EMAIL] </> - - - #
    validates :place_email, presence: true, uniqueness: true
    validates :place_email, format: { with: URI::MailTo::EMAIL_REGEXP }

    # - - - </> [SCORE] </> - - - #
    validates :place_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

    # - - - </> [PHONE] </> - - - #
    validates :place_phone, presence: true, format: { with: /\A\d{4}-\d{4}\z/ }

    # - - - </> [WEBSITE] </> - - - #
    URL_REGEX = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
    validates :place_website, presence: true, format: { with: URL_REGEX }
    
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
