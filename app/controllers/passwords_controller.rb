#
# Controller class that modifies the default Devise controller
#
# @version: 1.0
# @author: Nestor Bermudez
#
class PasswordsController < Devise::PasswordsController
  layout false
end
