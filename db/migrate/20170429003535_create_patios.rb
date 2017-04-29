class CreatePatios < ActiveRecord::Migration[5.1]
  def change
    create_table :patios do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :neighborhood, null: false
      t.integer :seats

      t.timestamps
    end
  end
end
