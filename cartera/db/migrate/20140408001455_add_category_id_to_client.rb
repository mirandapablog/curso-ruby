class AddCategoryIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :category_id, :integer
    add_index :clients, :category_id
  end
end
