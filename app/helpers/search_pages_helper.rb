
module SearchPagesHelper
	def apply_condition
		#price range condition
		begin
			min_price = min_price_range @condition[:price_range]
			max_price = max_price_range @condition[:price_range]
			bedroom_type = property_type
			lease_type = lease_types
			area = area_types
			logger.info "min #{min_price}"
			logger.info "max #{max_price}"
			logger.info "property type #{bedroom_type}"
			logger.info "area #{area_types}"
			@property_locations = PropertyLocation.select("id").where("area in (?)", area)
			@properties = Property.where("rent >= ? AND rent <= ? AND property_type IN (?) AND lease_type in (?) 
												AND property_location_id in (?)", 
												min_price, max_price, bedroom_type, lease_type, @property_locations)
		rescue Exception => e
			logger.info e.to_s
			Property.all
		end
		
	end

	def min_price_range price_range
		begin
			logger.info SearchConstraint.get_key_for_value(price_range.to_i, SearchConstraint.PRICE_RANGE)
			return SearchConstraint.get_key_for_value(price_range.to_i, SearchConstraint.PRICE_RANGE).to_s.split('-')[0].to_i
		rescue
			return 0
		end
		
	end

	def max_price_range price_range
		begin
			logger.info SearchConstraint.get_key_for_value(price_range.to_i, SearchConstraint.PRICE_RANGE).to_s.split("-")[1]
			max =  SearchConstraint.get_key_for_value(price_range.to_i, SearchConstraint.PRICE_RANGE).to_s.split('-')[1].to_i
			return max if max > 0
			raise 'All property Exception'
		rescue
			return 10000000000
		end
		
	end

	def property_type
		begin
			return @condition[:bedroom] if @condition[:bedroom]
			raise "Exception"
		rescue Exception => e
			PropertyConstraint.get_value PropertyConstraint.property_types
		end
		
	end
	def  area_types
		begin
			return @condition[:area] if @condition[:area]
			raise "Exception"
		rescue Exception => e
			PropertyLocationConstraint.get_value PropertyLocationConstraint.area_types
		end
	end

	def lease_types
		begin
			return @condition[:lease_types] if @condition[:lease_types]
			raise "Exception"
		rescue Exception => e
			PropertyConstraint.get_value PropertyConstraint.lease_types
		end
		
	end
end
