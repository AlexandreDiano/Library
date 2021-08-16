class AddBookRefToLoans < ActiveRecord::Migration[6.1]
  def change
    add_reference :loans, :book, null: false, foreign_key: true
  end
end
