class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.belongs_to :user, index: true
      t.belongs_to :item, index: true
      t.belongs_to :shop, index: true
      t.date :check_in_at
      t.date :check_out_at
      t.string :keyword

      t.timestamps
    end
  end
end
