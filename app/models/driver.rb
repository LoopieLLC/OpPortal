class Driver < ApplicationRecord
  before_save { self.email = email.downcase }
  before_save { self.confirmation_status = 1 }
  before_save { self.driving_status = 0 }
  has_many :loads

  #has_one_attached :license_image

    # def VINVALIDATE
    #   unless vin.include?('I', 'Q', 'O') == false
    #     errors.add(:vin, "VINS cannot contain I, Q, or O")
    #   end
    # end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}\z/i
  VALID_PHONE_NUMBER_REGEX = /\A^[2-9]\d{2}-\d{3}-\d{4}$\z/i
  VALID_VIN_REGEX = /\A[A-HJ-NPR-Z0-9]{17}\z/i
  VALID_LP_REGEX = /\A[A-Z]{3}[0-9]{4}|[0-9]{3}-[A-Z]{3}\z/i
  current_car_year = Time.new.year + 1

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

  has_secure_password
  validates :password,
    presence: true,
    length: { minimum: 8 }

  #validates names
  validates :firstname, :lastname,
    presence:true,
    length: { maximum: 25 }

  #validates phone number field
  validates :phone,
    presence: true
    #format: { with: VALID_PHONE_NUMBER_REGEX }

  #validates license_plate
  #note: change regex for all 50 states once Loopie expands, will use regex for washington LPs for now
  #also need to use different case -- maybe checkbox for custom LPs
  validates :license_plate,
    presence: true,
    format: { with: VALID_LP_REGEX }

  validates :address_1,
    presence: true

  validates :address_2,
    presence: true

  validates :zip,
    presence: true

  #validates car_year
  validates :car_year,
    presence: true
    #inclusion: { in: (1900..current_car_year), message:"%{value} is not a valid car year"}

#validates car_make
  validates :car_make,
    presence: true

#validates car_model
  validates :car_model,
    presence: true

#validates car_color
  validates :car_color,
    presence: true

  validates :vin,
    presence: true

  # validates :start_date,
  # install gem required for dates
  # next

end
