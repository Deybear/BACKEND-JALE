class Review < ApplicationRecord

    # - - - </> [TYPE] </> - - - #
    after_initialize :default_display

    # - - - </> [TITLE] </> - - - #
    validates :review_title, presence: true

    # - - - </> [DESC] </> - - - #
    validates :review_desc, presence: true

    # - - - </> [SCORE] </> - - - #
    validates :review_score, presence: true
    
    # - - - </> [REVIEW] <=> [USER] </> - - - #
    has_many :place_reviews, dependent: :destroy
    has_many :users, through: :place_reviews

    # - - - </> [REVIEW] <=> [PLACES] </> - - - #
    has_many :place_reviews, dependent: :destroy
    has_many :places, through: :place_reviews
    
    # - - - </> [METHOD] </> - - - #
    def self.find_user_places
        self.all.as_json(include: {place_reviews: {include: {user: {only: [:id, :user_name]}, place: {only: [:id, :place_name]}}}})
    end

    private

    # - - - </> [TYPE] </> - - - #
    def default_display
        self.review_display ||= true
    end

end
