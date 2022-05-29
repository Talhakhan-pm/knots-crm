class ChangeColoumnTypesForPgLeadsAgain < ActiveRecord::Migration[7.0]
  def self.up
    change_table :leads do |t|
      t.change :phone_number, :string
    end
  end
  def self.down
    change_table :leads do |t|
      t.change :phone_number, :integer
    end
  end
end
