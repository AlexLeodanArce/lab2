class Monster < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :attacks, dependent: :destroy
    has_many :victims, through: :attacks
#    validate :condicion
end
=begin
    def condicion
            victims.each do |elemento|
                if (elemento.birthdate > 18.years.ago) && (scare_level > 5)
                    errors.add(:scare_level, message: "Can't have victims younger than 18 years old when the scare level is more than 5")
                end
            end
    end
=end
