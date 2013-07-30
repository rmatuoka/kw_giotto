class CreateProductCatalogs < ActiveRecord::Migration
  def self.up
    create_table :product_catalogs do |t|
      t.string :link
      t.boolean :active
      t.boolean :published
      t.timestamps
    end
  end

  def self.down
    drop_table :product_catalogs
  end
end
