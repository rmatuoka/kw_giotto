class AddOrderToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :order, :integer, :default => 1, :null => false
  end

  def self.down
    remove_column :products, :order
  end
end
