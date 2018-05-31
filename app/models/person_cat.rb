class PersonCat < ApplicationRecord
  belongs_to :cat
  belongs_to :person

  def self.search(params)
    params.keys.each do |key|
      
    end
  end
end
