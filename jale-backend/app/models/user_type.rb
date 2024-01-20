class UserType < ApplicationRecord

    # - - - </> [NAME] </> - - - #
    validates :user_type_desc, presence: true

    # - - - </> [TYPE] <=> [USER] </> - - - #
    # belongs_to :user

end
