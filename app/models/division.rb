class Division < ApplicationRecord
    belongs_to :championship
    
    has_many :division_users
    has_many :clashes
end
