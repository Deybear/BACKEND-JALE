class User < ApplicationRecord
    
    # - - - </> [TYPE] </> - - - #
    after_initialize :default_type

    # - - - </> [PASS] </> - - - #
    has_secure_password

    # - - - </> [MAIL] </> - - - #
    validates :user_email, presence: true, uniqueness: true
    validates :user_email, format: { with: URI::MailTo::EMAIL_REGEXP }

    # - - - </> [NAME] </> - - - #
    validates :user_name, presence: true, uniqueness: true
    validates :user_lastname, presence: true

    # - - - </> [DATE] </> - - - #
    validates :user_birthdate, presence: true

    # - - - </> [PASS] </> - - - #
    validates :password_digest, presence: true, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

    # - - - </> [USER] <=> [REVIEW] </> - - - #
    has_many :place_reviews, dependent: :destroy
    has_many :reviews, through: :place_reviews

    # - - - </> [USER] <=> [PLACE] </> - - - #
    has_many :user_tours, dependent: :destroy
    has_many :places, through: :user_tours

    # - - - </> [USER] <=> [TYPE] </> - - - #
    has_one :user_type

    private

    # - - - </> [TYPE] </> - - - #
    def default_type
        self.user_type_id ||= 2
    end

end
