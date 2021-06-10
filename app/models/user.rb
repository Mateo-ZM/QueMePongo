class User < ApplicationRecord
  has_secure_password
  has_many :guardarropas, dependent: :destroy
  paginates_per 14

  def admin?
    admin
  end
end
