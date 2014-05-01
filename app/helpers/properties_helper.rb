module PropertiesHelper
	def current_property
		Property.find_by(id: cookies[PropertyConstraint.cookie_current_property])
	end
end
