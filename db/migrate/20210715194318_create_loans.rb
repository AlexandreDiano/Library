class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.integer :cpf
      t.integer :borrow_books
      t.integer :returned_books
      t.float :total_pending

      t.timestamps
    end
  end
end
