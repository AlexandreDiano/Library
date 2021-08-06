class CreateUserTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_types do |t|
      t.string :title
      t.timestamps
    end
  end
end
