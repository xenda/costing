require 'test_helper'

class PackageActivityTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: package_activities
#
#  id          :integer(4)      not null, primary key
#  package_id  :integer(4)
#  activity_id :integer(4)
#  days        :integer(10)
#  created_at  :datetime
#  updated_at  :datetime
#

