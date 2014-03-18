class AddMailToToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :mail_to, :string
  end

  def self.down
    remove_column :contacts, :mail_to
  end
end
