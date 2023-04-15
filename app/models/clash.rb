class Clash < ApplicationRecord
    belongs_to :rounds
    belongs_to :divisions

    belongs_to :userhome, class_name: "User", foreign_key: "userhome_id"
    belongs_to :uservisit, class_name: "User", foreign_key: "uservisit_id"

end
