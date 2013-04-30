class AddNoveltyToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :novelty, :boolean
  end

  def self.down
    remove_column :products, :novelty
  end
end
