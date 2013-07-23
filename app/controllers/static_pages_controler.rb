
class StaticPagesController < ApplicationController

# When visiting the URI /static_pages/home Rails looks in the StaticPages controller
# and executes the code in the home action, and then renders the view.

# The methods above seems to be ampty but actually they're really defined inside
# ApplicationController.
  def home
  end

  def help
  end

end
