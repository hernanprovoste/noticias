class Ensayo < ActiveRecord::Base

	
	has_attached_file :pdf, :url => "/:class/:attachment/:id/:style_:basename.:extension"

	validates_attachment :pdf, content_type: { content_type: "application/pdf" }


end
