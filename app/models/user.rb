class User < ApplicationRecord
  has_secure_password
  has_many :guardarropas, dependent: :destroy
  has_one_attached :imagen
  paginates_per 14
  enum genero: [:Hombre, :Mujer, :Otro]

  def comprobar_link_imagen! 
    self.link_imagen = "imagen_no_disponible.jpg" if self.vacia?
  end 

  def vacia?
    (self.link_imagen.blank? || !("https".in?(self.link_imagen) || "http".in?(self.link_imagen)))
    #((URI.parse(self.link_imagen).scheme != "https") && (URI.parse(self.link_imagen).scheme != "http"))
  end

  def admin?
    admin
  end

  def tamanio_password_correcto?
    self.password.length > 7 && self.password.length < 17
  end
end
