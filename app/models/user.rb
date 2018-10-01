class User < ApplicationRecord
  before_save { self.email = email.downcase }
  before_save { self.confirmation_status = 0 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}\z/

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

  #validates for password, needs 8 chars and 1 number, 1 special character
  validates :password,
    presence: true,
    length: { minimum: 8 },
    format: { with: VALID_PASSWORD_REGEX }
end
