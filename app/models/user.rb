class User < ApplicationRecord
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

  has_one :washer
  has_one :driver
  #has_many :loads

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
    uniqueness: true

  validates :zip_code,
    presence: true,
    length: { minimum: 5, maximum: 15 }

  validates :password, length: { minimum: 8 }#, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true#, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true#, if: -> { new_record? || changes[:crypted_password] }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def make_washer

  end

  def make_driver

  end
end
