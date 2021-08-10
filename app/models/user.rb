class User < ApplicationRecord
  has_one :profile
  has_one :user_type, :through => :profile

  after_create :set_profile_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private
  def set_profile_id
    Profile.create(borrows_returned: 0, borrows_amount: 0, debit: 0, zip_code: '00000-000', age: 0,cpf: '000.000.000-00', name: self.email, user_type_id: 1, user_id: self.id)
  end
end
