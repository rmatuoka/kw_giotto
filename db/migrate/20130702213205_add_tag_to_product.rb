class AddTagToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :tag, :string
  end

  def self.down
    remove_column :products, :tag
  end
end
