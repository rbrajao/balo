class Team < ApplicationRecord
    has_many :users
    has_many :teamhome, class_name: "Match", foreign_key: "teamhome_id"
    has_many :teamvisit, class_name: "Match", foreign_key: "teamvisit_id"
end
