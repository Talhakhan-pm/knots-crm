class ChangeColoumnTypesForPgLeads < ActiveRecord::Migration[7.0]
  def self.up
    change_table :leads do |t|
      t.change :phone_number, :integer
    end
  end
  def self.down
    change_table :tablename do |t|
      t.change :fieldname, :string
    end
  end
end
