class Profile < ApplicationRecord
  belongs_to :user_type
  belongs_to :user
end
