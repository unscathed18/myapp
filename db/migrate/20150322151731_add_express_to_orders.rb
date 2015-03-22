class AddExpressToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :express, :boolean, null: false, default: false
  end
end
