class User < ApplicationRecord
  rolify
  authenticates_with_sorcery!

  before_save { self.email = email.downcase }

  after_create :assign_default_role

  #has_many :loads
  has_one :washer, dependent: :destroy, required: false, inverse_of: :user
  has_one :driver, dependent: :destroy, required: false, inverse_of: :user

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

  def assign_default_role
    self.add_role(:standard) if self.roles.blank?
  end

end
