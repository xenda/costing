require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

