class Admin < ApplicationRecord
  validates :name, presence: true
  has_secure_password
end
