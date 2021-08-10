class AddProfileRefToLoans < ActiveRecord::Migration[6.1]
  def change
    add_reference :loans, :profiles, null: false, foreign_key: true
  end
end
