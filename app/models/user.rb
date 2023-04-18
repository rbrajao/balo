class User < ApplicationRecord

    belongs_to :team
    
    has_many :division_users
    has_many :bets
    has_many :userhome, class_name: "Clash", foreign_key: "userhome_id"
    has_many :uservisit, class_name: "Clash", foreign_key: "uservisit_id"

    #server validation of fields 
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true

end
