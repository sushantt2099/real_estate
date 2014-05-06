module PropertiesHelper
	def current_property
		Property.find_by(id: cookies[PropertyConstraint.cookie_current_property])
	end

	def glyphicon value
		if value
			"glyphicon glyphicon-ok"
		else 
			"glyphicon glyphicon-remove text-muted"
		end
	end
end
