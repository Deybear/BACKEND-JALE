class Event < ApplicationRecord

    # - - - </> [NAME] </> - - - #
    validates :event_name, presence: true

    # - - - </> [DESC] </> - - - #
    validates :event_desc, presence: true

    # - - - </> [COST] </> - - - #
    validates :event_cost, presence: true, numericality: { only_integer: true }

    # - - - </> [EMAIL] </> - - - #
    validates :event_email, presence: true, uniqueness: true
    validates :event_email, format: { with: URI::MailTo::EMAIL_REGEXP }

    # - - - </> [PHOTO] </> - - - #
    validates :event_photo, presence: true, uniqueness: true

    # - - - </> [PHONE] </> - - - #
    validates :event_phone, presence: true, format: { with: /\A\d{4}-\d{4}\z/ }

    # - - - </> [WEBSITE] </> - - - #
    URL_REGEX = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
    validates :event_website, presence: true, format: { with: URL_REGEX }

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
