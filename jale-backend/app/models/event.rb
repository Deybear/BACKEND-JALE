class Event < ApplicationRecord

    # - - - </> [NAME] </> - - - #
    validates :event_name, presence: true

    # - - - </> [DESC] </> - - - #
    validates :event_desc, presence: true

    # - - - </> [COST] </> - - - #
    validates :event_cost, presence: true

    # - - - </> [EMAIL] </> - - - #
    validates :event_email, presence: true

    # - - - </> [PHOTO] </> - - - #
    validates :event_photo, presence: true

    # - - - </> [PHONE] </> - - - #
    validates :event_phone, presence: true

    # - - - </> [WEBSITE] </> - - - #
    validates :event_website, presence: true

    # - - - </> [ADDRESS] </> - - - #
    validates :event_address, presence: true

    # - - - </> [DATE] </> - - - #
    validates :event_date_start, presence: true

    # - - - </> [TIME] </> - - - #
    validates :event_time_start, presence: true

    # - - - </> [EVENT] <=> [CATEGORY] </> - - - #
    has_many :event_categories, dependent: :destroy
    has_many :categories, through: :event_categories

end
