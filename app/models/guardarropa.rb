class Guardarropa < ApplicationRecord
    has_many :prendas , foreign_key: 'guardarropa_id', dependent: :destroy
    has_many :atuendos
    has_one_attached :imagen
    accepts_nested_attributes_for :prendas
    paginates_per 4

    def comprobar_link_imagen! 
        if  self.imagen.attached?
            #self.link_imagen = url_for(self.imagen)
        elsif self.vacia?
            self.link_imagen = "https://lh3.googleusercontent.com/proxy/a1uzMlX3z9SFiv0QlPQEAsgitM6p3pbAIsEiWzQ8Q5v_u_G53qGjWnh_XdjHSWomKOzxqj-0qRHVvMjeQXU6z090ug"
        end
    end 

    def vacia?
        return (self.link_imagen.blank? || ((URI.parse(self.link_imagen).scheme != "https") && (URI.parse(self.link_imagen).scheme != "http")))
    end
end
