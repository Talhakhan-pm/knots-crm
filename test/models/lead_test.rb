# == Schema Information
#
# Table name: leads
#
#  id             :integer          not null, primary key
#  agent_id       :integer          not null
#  address        :string
#  full_name      :string
#  provider       :integer          default(0)
#  phone_number   :integer
#  account_number :integer
#  bill           :decimal(10, 2)
#  descriptor     :integer          default(0)
#  dis_bill       :decimal(10, 2)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class LeadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
