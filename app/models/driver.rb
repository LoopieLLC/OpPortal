class Driver < ApplicationRecord
  has_many :loads

  #validates if all required fields exist
  validates_presence_of :username, :password

  #validates if required unique fields are unique
  validates_uniqueness_of :id, :username

  #validation of lengths
  validates_length_of :password


end
