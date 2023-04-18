class Championship < ApplicationRecord
    has_many :rounds
    has_many :divisions

    #server validation of fields 
    validates :name, presence: true, uniqueness: true

end
