class User < ApplicationRecord

    belongs_to :teams
    
    has_many :division_users
    has_many :bets
    has_many :userhome, class_name: "Clash", foreign_key: "userhome_id"
    has_many :uservisit, class_name: "Clash", foreign_key: "uservisit_id"

end
