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

  def send_password_reset
    generate_token(:reset_password_token)
    self.reset_password_sent_at = Time.zone.now
    save!
    UserMailer.Recupero_password_email(self).deliver# This sends an e-mail with a link for the user to reset the password
  end
  # This generates a random password reset token for the user
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end