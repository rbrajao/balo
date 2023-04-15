class DivisionUser < ApplicationRecord
    belongs_to :users, class_name: "User"
    belongs_to :divisions, class_name: "Division"
end
