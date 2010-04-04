class AddDaysToPackage < ActiveRecord::Migration
  def self.up
    add_column :packages, :days, :decimal
  end

  def self.down
    remove_column :packages, :days
  end
end
