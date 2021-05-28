class Guardarropa < ApplicationRecord
    has_many :prendas , foreign_key: 'guardarropa_id', dependent: :destroy
    has_many :atuendos
    has_one_attached :imagen
    accepts_nested_attributes_for :prendas
    paginates_per 4

    def comprobar_link_imagen! 
        self.link_imagen =  "imagen_no_disponible.jpg" if self.vacia?
    end 

    
    def vacia?
        (self.link_imagen.blank? || !"https".in?(self.link_imagen) || !"http".in?(self.link_imagen))
    end
end 


#((URI.parse(self.link_imagen).scheme != "https") && (URI.parse(self.link_imagen).scheme != "http")