class CreateProductImages < ActiveRecord::Migration
  def self.up
    create_table :product_images do |t|
      t.boolean :active
      t.boolean :published
      t.timestamps
    end
  end

  def self.down
    drop_table :product_images
  end
end
