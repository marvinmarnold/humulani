class User < ActiveRecord::Base
  belongs_to :profile, polymorphic: true

  def guest?
    return true
  end
end
