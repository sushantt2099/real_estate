require 'BasicConstraint'

class PropertyConstraint < BasicConstraint
	

	#property_type 
	@@property_types = { pg: 0, rent: 1, lease: 2}

	#furnishing
	@@furnishing_types = { no: 0, semi: 1, full: 2 }

	#lease_type
	@@lease_types = { rent: 0, lease: 1 }


	def getPropertyTypes
		@@property_types
	end

	def getFurnishingTypes
		@@furnishing_types
	end

	def getLeaseTypes
		@@lease_types
	end

	def getMaxOfType
		findMaxValueOfHash(@@property_types)
	end

	def getMaxOfFurnishing
		findMaxValueOfHash(@@furnishing_types)
	end

	def getMaxOfLeaseType
		findMaxValueOfHash(@@lease_types)
	end

end