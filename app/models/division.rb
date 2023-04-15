class Division < ApplicationRecord
    has_many :division_users
    has_many :clashes
end
