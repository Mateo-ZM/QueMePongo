class Atuendo < ApplicationRecord
    has_one :prenda_torso,  class_name: "Prenda"
    has_one :prenda_piernas,  class_name: "Prenda"
    has_one :prenda_pies,  class_name: "Prenda"
    has_one :prenda_accesorios,  class_name: "Prenda"


    #has_one :prenda, -> { where(categoria: 2) } #Piernas
    #has_one :prenda, -> { where(categoria: 3) } #Pies
    #has_one :prenda, -> { where(categoria: 4) } #Accesorios
end
