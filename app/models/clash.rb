class Clash < ApplicationRecord
    belongs_to :round
    belongs_to :division

    belongs_to :userhome, class_name: "User", foreign_key: "userhome_id"
    belongs_to :uservisit, class_name: "User", foreign_key: "uservisit_id"

end
