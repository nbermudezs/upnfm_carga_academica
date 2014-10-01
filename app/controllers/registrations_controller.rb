#
# Controller class that modifies the default Devise controller
#
# @version: 1.0
# @author: Nestor Bermudez
#
class RegistrationsController < Devise::RegistrationsController
  layout 'devise'

  before_filter :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name, :email)
  end
end
