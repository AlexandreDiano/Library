class Profile < ApplicationRecord
  belongs_to :user_type, optional: true
  belongs_to :user, optional: true
end
