class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :genre
      t.string :summary
      t.string :publishing_company
      t.string :language
      t.string :author
      t.integer :total_amount
      t.boolean :available

      t.timestamps
    end
  end
end
