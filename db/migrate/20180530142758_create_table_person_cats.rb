class CreateTablePersonCats < ActiveRecord::Migration[5.2]
  def change
    create_table :person_cats do |t|
      t.belongs_to :person
      t.belongs_to :cat
    end
  end
end
