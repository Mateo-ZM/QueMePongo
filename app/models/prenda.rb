class Prenda < ApplicationRecord
    has_many :atuendos,foreign_key: 'prenda_torso_id', dependent: :destroy
    has_many :atuendos,foreign_key: 'prenda_piernas_id', dependent: :destroy
    has_many :atuendos,foreign_key: 'prenda_pies_id', dependent: :destroy
    has_many :atuendos,foreign_key: 'prenda_accesorios_id', dependent: :destroy

    enum categoria: [:Torso, :Piernas, :Pies, :Accesorio]
    enum tela: [:Algodon, :Lana, :Lino, :Cuero, :Denim, :Seda, :Poliester, :Mohair, :Piel, :Cuerina]
    has_one_attached :imagen
    paginates_per 6

    def vacia?
        (self.link_imagen.blank? || (!"https".in?(self.link_imagen) || !"http".in?(self.link_imagen)))
        #((URI.parse(self.link_imagen).scheme != "https") && (URI.parse(self.link_imagen).scheme != "http"))
    end

    def mismo_color?
        self.color_primario == self.color_secundario
    end

    def comprobar_color_secundario
        self.update({:color_secundario => "Vacio"}) if self.mismo_color?
    end

    def comprobar_link_imagen! 
        self.link_imagen = "imagen_no_disponible.jpg" if self.vacia?
    end 
    
end