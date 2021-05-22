class Guardarropa < ApplicationRecord
    has_many :prendas , foreign_key: 'guardarropa_id', dependent: :destroy
    #has_many  :prendas_torso,  class_name: "Prenda", -> { where categoria: :Torso },
    has_many :atuendos
    has_one_attached :imagen
    accepts_nested_attributes_for :prendas
    paginates_per 4

    def comprobar_link_imagen! 
        if  self.imagen.attached?
            #self.link_imagen = url_for(self.imagen)
        elsif self.vacia?
            self.link_imagen = "https://www.pngitem.com/pimgs/m/503-5039552_closet-png-image-wardrobe-png-transparent-png.png"
        end
    end 

    #def prendas_torso?
    #    return self.prendas.select{|p| p.categoria == "Torso"}
    #end
    
    def vacia?
        return (self.link_imagen.blank? || ((URI.parse(self.link_imagen).scheme != "https") && (URI.parse(self.link_imagen).scheme != "http")))
    end
end 