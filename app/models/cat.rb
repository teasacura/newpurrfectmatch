class Cat < ApplicationRecord
  validates :name, presence: true
  has_many :person_cats
  has_many :persons, through: :person_cats

end
