class Search < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  belongs_to :shop
  has_many :room_searches
  
  accepts_nested_attributes_for :room_searches

  def suggested_check_in
    Date.today
  end

  def suggested_check_out
    suggested_check_in + 1.week
  end

  def suggested_adults
    2
  end
end
