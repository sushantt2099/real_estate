require 'interested_people_constraint'

class InterestedPeopleController < ApplicationController
 

  def create
  	@current_property = Property.find_by(param_current_property_id)
  	if @current_property
      param = param_interested_person
      param["status"] = InterestedPeopleConstraint.status_types[:active]
      puts param
  		@interested_person = @current_property.interested_people.build(param)
  		if @interested_person.save
  			flash[:success] = "Your contact number #{@interested_person.phone_number} is noted, our team will contact you soon."
        redirect_to @current_property
  		end
  		

  	else
  		redirect_to root
  	end
  		

  end

  private
	def param_current_property_id
		params.require(:property).permit(:id)
	end  

	def param_interested_person
		params.require(:interested_person).permit(:phone_number)
	end	

end
