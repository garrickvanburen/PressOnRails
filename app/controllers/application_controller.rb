# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  filter_parameter_logging :password, :password_confirmation
  helper_method :options, :all_categories


  def options
    o = Option.find(:all)
    return Hash[*o.collect {|i| [i.option_name, i.option_value]}.flatten]
  end
  
  def all_categories
    return Category.find(:all)
  end  

end
