class User < ApplicationRecord
  before_save { self.email = email.downcase }
  before_save { self.confirmation_status = 0 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username,
    presence: true,
    length: { maximum: 50 },
    uniqueness: true

  validates :email,
    presence: true,
    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

  validates :id,
    presence: true,
    uniqueness: true
end
