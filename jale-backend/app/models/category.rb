class Category < ApplicationRecord

    # - - - </> [DESC] </> - - - #
    validates :category_desc, presence: true

    # - - - </> [CATEGORY] <=> [PLACE] </> - - - #
    has_many :place_categories, dependent: :destroy
    has_many :places, through: :place_categories

    # - - - </> [CATEGORY] <=> [EVENT] </> - - - #
    has_many :event_categories, dependent: :destroy
    has_many :events, through: :event_categories

end
