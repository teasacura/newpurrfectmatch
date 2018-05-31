class CreateTablePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.string :description
      t.string :location
      t.integer :min_age_pref
      t.integer :max_age_pref
      t.string :breed_pref
      t.string :temperament_pref
      t.integer :num_of_cats
    end
  end
end
