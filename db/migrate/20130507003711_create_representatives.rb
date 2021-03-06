class CreateRepresentatives < ActiveRecord::Migration
  def self.up
    create_table :representatives do |t|
      t.string :name
      t.string :email
      t.string :state
      t.string :city
      t.string :commercial_phone

      t.timestamps
    end
  end

  def self.down
    drop_table :representatives
  end
end
