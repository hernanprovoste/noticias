class Foto < ActiveRecord::Base
  has_attached_file :imagen, styles: { retina: "1200>" },
	:url => "/assets/fotos/:id/:style/:basename.:extension",
	:path => ":rails_root/public/assets/fotos/:id/:style/:basename.:extension"

	validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\Z/

	validates :title, :subtitle, :imagen, presence: true
end
