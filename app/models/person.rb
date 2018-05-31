class Person < ApplicationRecord
  validates :name, presence: true
  has_secure_password
  has_many :person_cats
  has_many :cats, through: :person_cats
end
