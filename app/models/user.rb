class User < ApplicationRecord
  has_secure_password

  ROLES = %i[owner admin assistant]

end
