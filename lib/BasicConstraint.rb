class BasicConstraint

	cattr_reader :minimum_value, :boolean_types

	@@minimum_value = 0

	#boolean hash
	@@boolean_types = {  false: :false, true: :true }

	class << self
		
		def max_value_of_type(h)
			highest = 0
			h.each do |key, value|
				if highest < value
					highest = value
				end
			end
			highest
		end

		def create_types(typeKeys)
			typeHash = {}
			typeHashValue = @@minimum_value
			typeKeys.each do |key|
				typeHash[key] = typeHashValue
				typeHashValue = typeHashValue + 1
			end
			typeHash
		end
		def get_key_for_value(mapvalue, h)
			key_found = :could_not_find_value
			h.each do |key, value|
				if value == mapvalue
					key_found = key
				end
			end
			key_found
		end
	end
end