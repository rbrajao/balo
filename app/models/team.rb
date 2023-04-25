class Team < ApplicationRecord
   
    has_many :users
    has_many :teamhome, class_name: "Match", foreign_key: "teamhome_id"
    has_many :teamvisit, class_name: "Match", foreign_key: "teamvisit_id"

    validates :name, presence: true, uniqueness: true

    #avatar/image of the team
    has_one_attached :avatar 

    #check if image exist
    def avatar_url
    
        if avatar.attached?
            avatar
        else
            ActionController::Base.helpers.asset_path("default-avatar-35x35.png")
        end
    end
end
