class AddAttachmentFileToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :file_file_name, :string
    add_column :contacts, :file_content_type, :string
    add_column :contacts, :file_file_size, :integer
    add_column :contacts, :file_updated_at, :datetime
  end

  def self.down
    remove_column :contacts, :file_file_name
    remove_column :contacts, :file_content_type
    remove_column :contacts, :file_file_size
    remove_column :contacts, :file_updated_at
  end
end
