class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.references :kid, foreign_key: true
      t.references :parent, foreign_key: true
      t.integer :amount
      t.string :note

      t.timestamps
    end
  end
end
