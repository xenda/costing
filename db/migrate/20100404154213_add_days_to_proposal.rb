class AddDaysToProposal < ActiveRecord::Migration
  def self.up
    add_column :proposals, :days, :decimal
  end

  def self.down
    remove_column :proposals, :days
  end
end
