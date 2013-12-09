class RemoveTitleFromProductCatalog < ActiveRecord::Migration
  def self.up
    remove_column :product_catalogs, :title
  end

  def self.down
    add_column :product_catalogs, :title, :string
  end
end
