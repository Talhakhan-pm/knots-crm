class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.references :agent, null: false, foreign_key: {to_table: :users}
      t.string :address
      t.string :full_name
      t.integer :provider, default: 0
      t.integer :phone_number
      t.integer :account_number
      t.decimal :bill, precision: 10, scale: 2
      t.integer :descriptor, default: 0
      t.decimal :dis_bill, precision: 10, scale: 2

      t.timestamps
    end
  end
end
