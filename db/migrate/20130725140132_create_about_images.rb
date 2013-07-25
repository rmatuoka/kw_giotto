class CreateAboutImages < ActiveRecord::Migration
  def self.up
    create_table :about_images do |t|
      t.boolean :active
      t.boolean :published
      t.timestamps
    end
  end

  def self.down
    drop_table :about_images
  end
end
