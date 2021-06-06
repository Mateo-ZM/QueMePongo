class User < ApplicationRecord
  has_secure_password
  has_many :guardarropas, dependent: :destroy
end
