class User < ApplicationRecord
  rolify
  authenticates_with_sorcery!

  before_save { self.email = email.downcase }
  before_save { self.confirmation_status = 0 }

  after_create {
    if self.role == 1
      make_washer
    else
      make_driver
    end
  }

  has_one :washer, dependent: :destroy
  has_one :driver, dependent: :destroy
  #has_many :loads

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}\z/

  validates :username,
    presence: true,
    length: { maximum: 50 },
    uniqueness: true

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
    uniqueness: true

  validates :zip_code,
    presence: true,
    length: { minimum: 5, maximum: 15 }

  validates :password, length: { minimum: 8 }#, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true#, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true#, if: -> { new_record? || changes[:crypted_password] }
  def make_washer
    washer = Washer.create!(:email => self.email, :username => self.username, :user_id => self.id, :firstname => self.firstname, :lastname => self.lastname, :phone => self.phone, :address_1 => self.address_1, :address_2 => self.address_2, :city => self.city, :state => self.state, :zip_code => self.zip_code, :machine_description => self.machine_description)
    washer.save
    self.add_role(:standard_user, Washer) if self.roles.blank?
  end

  def make_driver
    driver = Driver.create!(:email => self.email, :username => self.username, :user_id => self.id, :firstname => self.firstname, :lastname => self.lastname, :phone => self.phone, :address_1 => self.address_1, :address_2 => self.address_2, :city => self.city, :state => self.state, :zip_code => self.zip_code, :insurance_info => self.insurance_info, :vin => self.vin, :license_plate => self.license_plate, :car_make => self.car_make, :car_year => self.car_year, :car_color => self.car_color, :car_model => self.car_model, :additional_information => self.additional_information)
    driver.save
    self.add_role(:standard_user, Driver) if self.roles.blank?
  end
end
