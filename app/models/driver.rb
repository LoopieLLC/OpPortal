class Driver < ApplicationRecord

before_save { self.email = email.downcase }
before_save { self.confirmation_status = 0 }

has_many :loads

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
VALID_PASSWORD_REGEX = /\A(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}\z/
VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}\z/
VALID_VIN_REGEX = ""
VALID_LP_REGEX = /\A[A-Z]{3}[0-9]{4}|[0-9]{3}-[A-Z]{3}\z/

#validates for username
validates :username,
  presence: true,
  length: { maximum: 50 },
  uniqueness: true

#validates for password, needs 8 chars and 1 number, 1 special character
validates :password,
  presence: true,
  length: { minimum: 8 },
  format: { with: VALID_PASSWORD_REGEX }

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
  presence: true,
  format: { with: VALID_PHONE_NUMBER_REGEX }

#validates license_plate
#note: change regex for all 50 states once Loopie expands, will use regex for washington LPs for now
validates :license_plate,
  presence: true,
  format: { with: VALID_LP_REGEX }

#validates car_year
<<<<<<< HEAD
  validates :car_year,s
    presence: true
  validates_numericality_of :car_year,





#validates car_make

#validates car_model

#validates car_color

#validates VIN(vehicle identification number)

#validates driver_license_img

#validates description

#validates current_loads

#validates start_date

#validates driving_status

#validates confirmation_status

#validates created_at

#validates updated_at
=======
validates :car_year,
  presence: true,
  #only_integer: true,
  allow_nil: false
  #in: 1920..2019
>>>>>>> 16816dba773d91e1571c37d293b1c9b75b7fb65c


end
