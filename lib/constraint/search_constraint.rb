require 'constraint/basic_constraint'

class SearchConstraint < BasicConstraint
	
	cattr_reader :PRICE_RANGE

	@@PRICE_RANGE = create_types [:All, :'0-5000', :'5000-10000', :'10000-15000', 
									:'15000-2000', :'20000-25000', :'25000-30000', :'30000+']
end