class HomeController < ApplicationController
  skip_before_action :validate_logged_user!

  def index
  end
  
end
