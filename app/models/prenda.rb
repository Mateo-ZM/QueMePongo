class Prenda < ApplicationRecord
    enum categoria: [:Torso, :Piernas, :Pies, :Accesorio]
    enum tela: [:Algodon, :Lana, :Lino, :Cuero, :Denim, :Seda, :Poliester, :Mohair, :Piel, :Cuerina]
    has_one_attached :imagen

    def vacia?
        return (self.link_imagen.blank? || ((URI.parse(self.link_imagen).scheme != "https") && (URI.parse(self.link_imagen).scheme != "http")))
    end

    def mismo_color?
        return self.color_primario == self.color_secundario
    end

    # def comprobar_imagen! 
    #    if  self.imagen.attached?
    #       self.link_imagen = url_for(self.imagen)
    #    elsif self.vacia?
    #        self.link_imagen = "imagen_no_disponible.jpg"
    #    end
    #end 
end