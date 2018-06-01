class AddColumnImageUrlToPeopleAndCats < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :admin, :boolean, default: false
    add_column :people, :image_url, :string, default: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Portrait_Placeholder.png/120px-Portrait_Placeholder.png"
    add_column :cats, :image_url, :string, default: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Portrait_Placeholder.png/120px-Portrait_Placeholder.png"
  end
end
