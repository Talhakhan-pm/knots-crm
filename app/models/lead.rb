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
class Lead < ApplicationRecord
  belongs_to :agent, class_name: 'User'

  #SCOPES
  scope :since, lambda {|time| where("created_at > ?", time) }
  scope :during_last, lambda {|time| where("created_at > ?", (Time.now - time)) }

  #ENUMS
  enum provider: ["None", "Directv", "Spectrum", "Xfinity"]

end
