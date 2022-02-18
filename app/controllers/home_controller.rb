class HomeController < ApplicationController
  def index
    if user_signed_in?
    else 
    end
  end

  def error_page
  end
end
