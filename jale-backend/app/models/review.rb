class Review < ApplicationRecord

    # - - - </> [TITLE] </> - - - #
    validates :review_title, presence: true

    # - - - </> [DESC] </> - - - #
    validates :review_desc, presence: true

    # - - - </> [SCORE] </> - - - #
    validates :review_score, presence: true

    # - - - </> [FALSE] </> - - - #
    validates :review_display, presence: true

    # - - - </> [REVIEW] </> - - - #
    belongs_to :place
    belongs_to :user

end
