class Driver < ApplicationRecord

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = ""


  has_many :loads

#validates for username
  validates :username,
    presence: true,
    length: { maximum: 50 },
    uniqueness: true

#validates for password, needs 8 chars and 1 number, 1 special character
  validates :password,
    presence: true,
    length: { minimum: 8 }
    #format: { with: /(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#%&*]).{8,}/ },
    #multiline: true

#validates email
  validates :email,
    presence: true,
    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

#validates 

end
