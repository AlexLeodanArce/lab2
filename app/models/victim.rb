class Victim < ApplicationRecord
    validates :name, presence: true
    has_one :attack, dependent: :destroy
end