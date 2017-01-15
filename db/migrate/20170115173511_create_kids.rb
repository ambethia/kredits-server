class CreateKids < ActiveRecord::Migration[5.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :kredits, default: 0

      t.timestamps
    end
  end
end
