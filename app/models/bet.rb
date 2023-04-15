class Bet < ApplicationRecord
    belongs_to :users
    belongs_to :matches
end
