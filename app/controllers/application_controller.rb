class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    '/scout_page/index'
  end

  def after_sign_out_path_for(resource)
    '/'
  end

  #TODO I want to make a wizard so that I can capture information about scouts and save that to the db
=begin
  def before_sign_up_path_for(resource)
    do something cool
  end
=end

  def after_sign_up_path_for(resource)
    '/scout_page/index'
  end
end
