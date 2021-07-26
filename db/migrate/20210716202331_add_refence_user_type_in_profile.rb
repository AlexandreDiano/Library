class AddRefenceUserTypeInProfile < ActiveRecord::Migration[6.1]
  def change
    add_reference(:profiles, :user_types, foreign_key: true)
  end
end
