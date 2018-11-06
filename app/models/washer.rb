class Washer < ApplicationRecord
  resourcify

  before_save { self.email = email.downcase }
  before_save { self.confirmation_status = 0 }
  before_save { self.washing_status = 0 }

  belongs_to :user
  #has_one_attached :profile_picture

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}\z/
  VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}\z/i

  #validates for username
  validates :username,
    presence: true,
    length: { maximum: 50 },
    uniqueness: true

  #validates email
  validates :email,
    presence: true,
    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

  #validates names
  validates :firstname, :lastname,
    presence:true,
    length: { maximum: 25 }

  #validates phone number field
  validates :phone,
    presence: true
    #format: { with: VALID_PHONE_NUMBER_REGEX }
end
