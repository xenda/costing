class Activity < ActiveRecord::Base
  belongs_to :package
end

# == Schema Information
#
# Table name: activities
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  package_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

