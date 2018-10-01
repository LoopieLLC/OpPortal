class Washer < ApplicationRecord
  has_many :loads
  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }
end
