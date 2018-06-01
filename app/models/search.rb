class Search < ApplicationRecord

  def search_profiles
    cats = cats_search
    people = people_search

    profiles = []

    if !cats.nil?
      profiles += cats
    end

    if !people.nil?
      profiles += people
    end

    return profiles

  end

  def cats_search
    cats = Cat.all
    # cats = Cat.where("name LIKE ? OR description LIKE ? OR location LIKE ? OR age = ? OR breed LIKE ? or temperament LIKE ? OR sociability LIKE ?", "%#{name}%", "%#{description}%", "%#{location}%", age, "%#{breed}%", "%#{temperament}%", "%#{sociability}%")
    cats = cats.where("name LIKE ?", "%#{name}%") if name.present?
    cats = cats.where("description LIKE ?", "%#{description}%") if description.present?
    cats = cats.where("location LIKE ?", "%#{location}%") if location.present?
    cats = cats.where("age = ?", age) if age.present?
    cats = cats.where("breed LIKE ?", "%#{breed}%") if breed.present?
    cats = cats.where("temperament LIKE ?", "%#{temperament}%") if temperament.present?
    cats = cats.where("sociability LIKE ?", "%#{sociability}%") if sociability.present?

    if cats == Cat.all
      return nil
    else
      return cats
    end
  end

  def people_search
    people = Person.all

    people = people.where("name LIKE ?", "%#{name}%") if name.present?
    people = people.where("description LIKE ?", "%#{description}%") if description.present?
    people = people.where("location LIKE ?", "%#{location}%") if location.present?

    people = people.where("min_age_pref = ?", min_age_pref) if min_age_pref.present?
    people = people.where("max_age_pref = ?", max_age_pref) if max_age_pref.present?
    people = people.where("breed_pref LIKE ?", "%#{breed_pref}%") if breed_pref.present?
    people = people.where("temperament_pref LIKE ?", "%#{temperament_pref}%") if temperament_pref.present?
    people = people.where("num_of_cats = ?", num_of_cats) if num_of_cats.present?

    if people == Person.all
      return nil
    else
      return people
    end

  end

end
