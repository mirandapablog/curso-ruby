class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category, index: true
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
