class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :cpf
      t.string :name
      t.integer :age
      t.bigint :zip_code
      t.float :debit
      t.integer :borrows_amount
      t.integer :borrows_returned
      t.timestamps
    end
  end
end
