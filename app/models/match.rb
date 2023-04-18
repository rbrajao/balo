class Match < ApplicationRecord

    belongs_to :round
    
    belongs_to :teamhome, class_name: "Team", foreign_key: "teamhome_id"
    belongs_to :teamvisit, class_name: "Team", foreign_key: "teamvisit_id" 

    has_many :bets

end
