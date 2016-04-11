class Notice < ActiveRecord::Base
	
	has_attached_file :image, styles: { retina: "1200>" },
	:url => "/assets/lotes/:id/:style/:basename.:extension",
	:path => ":rails_root/public/assets/lotes/:id/:style/:basename.:extension"

  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	validates :title, :subtitle, :body, :image, presence: true
end
