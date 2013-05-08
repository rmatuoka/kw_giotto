class CreateFinds < ActiveRecord::Migration
  def self.up
    create_table :finds do |t|
      t.string :name
      t.string :mail
      t.string :state
      t.string :city
      t.string :commercial_phone

      t.timestamps
    end
  end

  def self.down
    drop_table :finds
  end
end
