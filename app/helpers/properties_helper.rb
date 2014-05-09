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

	def text_muted value
		if value
			""
		else
			'class=text-muted'
		end
	end
end
