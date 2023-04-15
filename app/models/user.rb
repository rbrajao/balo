class User < ApplicationRecord

    belongs_to :teams
    has_many :division_users

end
