class AddLitreToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :litre, :integer
  end

  def self.down
    remove_column :products, :litre
  end
end
