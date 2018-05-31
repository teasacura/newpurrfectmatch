class PersonCat < ApplicationRecord
  belongs_to :cat
  belongs_to :person
end
