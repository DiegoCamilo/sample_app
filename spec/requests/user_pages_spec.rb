#Standard requirement when working with RSpec.
require 'spec_helper'

#Describes what we are testing (user's criteria, any string will do).
describe "UserPages" do

  #Function to deffine what what 'it' is about in the code.
  subject{ page }

  
  describe "signup page" do
    #Opens the correct page in order to test it.
    #Here we're not giving the URI itself but the path mapped in the routing
    #file.
    before { visit signup_path }

    # -------------- Tests -------------- #
    it { should have_selector('h1',          text: 'Sign up') }
    it { should have_selector('title',       text: full_title('Sign up')) }

  end

end
