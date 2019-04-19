class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  ROLES = %i[owner admin assistant]

end
