class Round < ApplicationRecord
    belongs_to :championship

    has_many :clashes
    has_many :matches
end
