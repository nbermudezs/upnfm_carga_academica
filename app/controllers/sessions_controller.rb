#
# Controller class that modifies the default Devise controller
#
# @version: 1.0
# @author: Nestor Bermudez
#
class SessionsController < Devise::SessionsController
  layout 'devise'
end
