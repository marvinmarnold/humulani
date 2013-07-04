class Profile < ActiveRecord::Base
  self.abstract_class = true

  has_one :user, as: :profile, dependent: :destroy

  belongs_to :language

end