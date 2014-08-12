include CarrierWave::MiniMagick
require 'land_property_constraint'
module PropertiesHelper
	def current_property
		if Property.find_by(id: cookies[PropertyConstraint.cookie_current_property])
			Property.find_by(id: cookies[PropertyConstraint.cookie_current_property])			
		else 
			LandProperty.find_by(id: cookies[LandPropertyConstraint.cookie_current_property])
		end
	end

	def glyphicon value
		if value
			"glyphicon glyphicon-ok"
		else 
			"glyphicon glyphicon-remove text-muted"
		end
	end

	def text_muted value
		if value
			""
		else
			'class=text-muted'
		end
	end

end
