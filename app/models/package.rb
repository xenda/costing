class Package < ActiveRecord::Base
  
  belongs_to :proposal
  has_many :activities
  
  attr_accessor :final_price
  
  IGV_TAX = 0.19
  
  def costs
    variable_cost + fixed_cost
  end
  
  def net_costs
    costs + profit_margin + negotiation_margin
  end
  
  def taxes
    net_costs * IGV_TAX
  end
  
  def final_price
    net_costs + taxes
  end
  
  def days
    self.activities.sum(&:)
  end
  
  
end
