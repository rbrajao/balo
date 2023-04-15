class Championship < ApplicationRecord
    has_many :rounds
    has_many :divisions
end
