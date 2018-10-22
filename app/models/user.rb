class User < ApplicationRecord
  before_save { self.email = email.downcase }
  before_save { self.confirmation_status = 0 }

  belongs_to :driver, optional: true
  belongs_to :washer, optional: true

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
    format: { with: VALID_EMAIL_REGEX }

  validates :zip_code,
    presence: true,
    length: { minimum: 5, maximum: 15 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
