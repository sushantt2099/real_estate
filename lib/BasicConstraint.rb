class BasicConstraint

	@@minimum_val = 0

	#boolean hash
	@@booleanTypes = {  false: :false, true: :true }


	def getBooleanTypes
		@@booleanTypes
	end
	
	def getMinimumValue 
		@@minimum_val
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

	

#	def create_types(typesVal)
#		@typesHash
#		@typesHashValue = @@minimum_val
#		for typesVal.each do |key|
#			@typesHash[key] = @typesHashValue
#			@typesHashValue += 1
#		end
#		@typesHash
#	end

end