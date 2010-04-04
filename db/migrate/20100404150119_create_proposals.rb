class CreateProposals < ActiveRecord::Migration
  def self.up
    create_table :proposals do |t|
      t.string :client_name
      t.datetime :proposed_at
      t.integer :user_id
      t.decimal :total, :precision => 10, :scale => 3
      t.decimal :variable_cost, :precision => 10, :scale => 3
      t.decimal :fixed_cost, :precision => 10, :scale => 3
      t.decimal :profit_margin, :precision => 10, :scale => 3
      t.decimal :negotiation_margin, :precision => 10, :scale => 3
      t.decimal :markup, :precision => 10, :scale => 3
      t.decimal :sales_tax, :precision => 10, :scale => 3
      t.decimal :price_reduction, :precision => 10, :scale => 3
      t.decimal :fixed_cost_percent, :precision => 5, :scale => 3
      t.decimal :profit_margin_percent, :precision => 5, :scale => 3
      t.decimal :negotiation_margin_percent, :precision => 5, :scale => 3
      t.decimal :sales_tax_percent, :precision => 5, :scale => 3
      t.decimal :price_reduction_percent, :precision => 5, :scale => 3
      t.integer :lock_version, :null => false, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :proposals
  end
end
