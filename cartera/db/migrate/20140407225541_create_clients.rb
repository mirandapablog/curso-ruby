class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :tax_code
      t.text :address
      t.decimal :balance
      t.boolean :active

      t.timestamps
    end
  end
end
