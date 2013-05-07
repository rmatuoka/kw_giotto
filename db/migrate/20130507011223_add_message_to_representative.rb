class AddMessageToRepresentative < ActiveRecord::Migration
  def self.up
    add_column :representatives, :message, :text
  end

  def self.down
    remove_column :representatives, :message
  end
end
