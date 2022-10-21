class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim
    validate :no_menores

def no_menores
    if monster.scare_level > 5 && victim.birthdate > 18.years.ago
        errors.add(:monster_id, message:"No se puede agregar. Un monstruo de nivel de susto 5 no puede tener victimas menores de 18 años")
    end
end

end