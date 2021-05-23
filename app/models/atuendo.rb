class Atuendo < ApplicationRecord
    belongs_to :prenda_torso, class_name: "Prenda" 
    belongs_to :prenda_piernas, class_name: "Prenda" 
    belongs_to :prenda_pies, class_name: "Prenda" 
    belongs_to :prenda_accesorios, class_name: "Prenda" 
end
