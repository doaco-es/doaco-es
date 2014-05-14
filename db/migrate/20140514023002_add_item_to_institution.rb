class AddItemToInstitution < ActiveRecord::Migration
  def change
    add_column :institutions, :item, :string
  end
end
