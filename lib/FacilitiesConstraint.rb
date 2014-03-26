require 'BasicConstraint'

class FacilitiesConstraint < BasicConstraint

	#parking types
	@@parkingTypes = { no: 0, bike: 1, car: 2, both: 3 }

	def getParkingTypes
		@@parkingTypes
	end

	def getBooleanTypes
		@@booleanTypes
	end
	def getMaxOfParkingTypes
		findMaxValueOfHash(@@parkingTypes)
	end

	def findMaxValueOfHash(h)
		highest = 0
		h.each do |key, value|
			if highest < value
				highest = value
			end
		end
		highest
	end

	def getMinimumValue 
		@@minimum_val
	end

end