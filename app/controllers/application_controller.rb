class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper
  include CitiesHelper

  before_action :current_user, :show_form


  def show_form
  	@new_user = User.new
  end 

end
