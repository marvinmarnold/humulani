class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.belongs_to :profile, polymorphic: true

      t.timestamps
    end
    add_index :users, [:profile_id, :profile_type]
  end
end
