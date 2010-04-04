class Proposal < ActiveRecord::Base
  has_many :packages
end


# == Schema Information
#
# Table name: proposals
#
#  id                         :integer(4)      not null, primary key
#  client_name                :string(255)
#  proposed_at                :datetime
#  user_id                    :integer(4)
#  total                      :decimal(10, 3)
#  variable_cost              :decimal(10, 3)
#  fixed_cost                 :decimal(10, 3)
#  profit_margin              :decimal(10, 3)
#  negotiation_margin         :decimal(10, 3)
#  markup                     :decimal(10, 3)
#  sales_tax                  :decimal(10, 3)
#  price_reduction            :decimal(10, 3)
#  fixed_cost_percent         :decimal(5, 3)
#  profit_margin_percent      :decimal(5, 3)
#  negotiation_margin_percent :decimal(5, 3)
#  sales_tax_percent          :decimal(5, 3)
#  price_reduction_percent    :decimal(5, 3)
#  lock_version               :integer(4)      default(0), not null
#  created_at                 :datetime
#  updated_at                 :datetime
#  days                       :integer(10)
#

