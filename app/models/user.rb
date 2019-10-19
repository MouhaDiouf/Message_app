class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum: 10}, uniqueness: {case_sensitive: false}
  has_many :messages
  has_secure_password
end
