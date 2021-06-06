class User < ApplicationRecord
  has_secure_password
  has_many :guardarropas, dependent: :destroy

  def admin?
    admin
  end
  #def usuario_activo?
  #  session[:self.id]
  #end
end
