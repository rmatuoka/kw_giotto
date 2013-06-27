class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :phone, :message
  has_attached_file:file
end
