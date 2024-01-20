class Token < ApplicationRecord

    # - - - </> [CODE] </> - - - #
    validates :token_code, presence: true, uniqueness: true

    # - - - </> [DATE] </> - - - #
    validates :token_date, presence: true

    # - - - </> [USER] </> - - - #
    has_one :user

end
