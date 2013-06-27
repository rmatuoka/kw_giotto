class AddStateAndContactToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :state, :string
    add_column :contacts, :contact, :boolean
  end

  def self.down
    remove_column :contacts, :contact
    remove_column :contacts, :state
  end
end
