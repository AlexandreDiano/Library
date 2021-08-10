class AddBookRefToLoans < ActiveRecord::Migration[6.1]
  def change
    add_reference :loans, :books, null: false, foreign_key: true
  end
end
