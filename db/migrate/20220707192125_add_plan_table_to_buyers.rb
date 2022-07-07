class AddPlanTableToBuyers < ActiveRecord::Migration[6.1]
  def change
    add_column :buyers, :account_type, :string
  end
end
