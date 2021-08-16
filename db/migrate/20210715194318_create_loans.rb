class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.boolean :returned
      t.float :debit
      t.timestamps
    end
  end
end
