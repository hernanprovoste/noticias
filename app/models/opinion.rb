class Opinion < ActiveRecord::Base
  has_attached_file :image, styles: { retina: "1200>" },
	:url => "/assets/opinions/:id/:style/:basename.:extension",
	:path => ":rails_root/public/assets/opinions/:id/:style/:basename.:extension"

  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	validates :title, :body, :autor, :image, presence: true

    permalink :title, to_param: %w(id title)
end
