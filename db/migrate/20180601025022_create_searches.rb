class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :name
      t.integer :age
      t.string :description
      t.string :location
      t.string :breed
      t.string :temperament
      t.string :sociability
      t.integer :min_age_pref
      t.integer :max_age_pref
      t.string :breed_pref
      t.string :temperament_pref
      t.integer :num_of_cats

      t.timestamps
    end
  end
end
