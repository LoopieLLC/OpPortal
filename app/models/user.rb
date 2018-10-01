class User < ApplicationRecord
  before_save { self.email = email.downcase }
  before_save { self.confirmation_status = 0 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :firstname,
    presence: true,
    length: { maximum: 25 }

  validates :lastname,
    presence: true,
    length: { maximum: 25 }

  validates :email,
    presence: true,
    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
end
