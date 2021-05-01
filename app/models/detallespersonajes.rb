class Personaje < ApplicationRecord
    validates :nombre, presence: true
end
