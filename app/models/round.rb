class Round < ApplicationRecord
    belongs_to :championships

    has_many :clashes
    has_many :matches
end
