class AddCategoryTitleToProductCatalog < ActiveRecord::Migration
  def self.up
    add_column :product_catalogs, :title, :string
  end

  def self.down
    remove_column :product_catalogs, :title
  end
end
