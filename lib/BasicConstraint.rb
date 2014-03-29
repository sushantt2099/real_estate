class BasicConstraint

	cattr_reader :minimum_val, :boolean_types

	@@minimum_val = 0

	#boolean hash
	@@boolean_types = {  false: :false, true: :true }

	class << self
		
		def max_value_of_hash(h)
			highest = 0
			h.each do |key, value|
				if highest < value
					highest = value
				end
			end
			highest
		end
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