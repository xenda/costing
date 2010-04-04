class CreatePackages < ActiveRecord::Migration
  def self.up
    create_table :packages do |t|
      t.string :name
      t.integer :proposal_id
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

      t.timestamps
    end
  end

  def self.down
    drop_table :packages
  end
end
