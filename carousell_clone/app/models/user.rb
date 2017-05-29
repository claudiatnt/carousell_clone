class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /.+@.+./, message: "Please input valid email" }
  validates :password, length: {minimum: 6}
end
