class CreatePackageActivities < ActiveRecord::Migration
  def self.up
    create_table :package_activities do |t|
      t.integer :package_id
      t.integer :activity_id
      t.decimal :days

      t.timestamps
    end
  end

  def self.down
    drop_table :package_activities
  end
end
