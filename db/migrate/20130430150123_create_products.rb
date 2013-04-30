class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :ean
      t.string :dun
      t.decimal :weight
      t.decimal :total_weight
      t.decimal :cubage
      t.decimal :amount
      t.string :dimensions
      t.string :color
      t.boolean :published
      t.boolean :active
      t.integer :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
