class AboutImage < ActiveRecord::Base
has_attached_file:image, :styles =>{:thumb => "250x166#",:small => "500x333#", :large => "1285x855#"}
validates_attachment_size :image, :less_than => 5.megabytes
end
