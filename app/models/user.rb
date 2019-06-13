class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  validates :email, presence: true, uniqueness: true
end
