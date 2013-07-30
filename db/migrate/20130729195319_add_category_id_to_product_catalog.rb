class AddCategoryIdToProductCatalog < ActiveRecord::Migration
  def self.up
    add_column :product_catalogs, :category_id, :integer
  end

  def self.down
    remove_column :product_catalogs, :category_id
  end
end
