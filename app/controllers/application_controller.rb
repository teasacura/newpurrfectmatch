class ApplicationController < ActionController::Base
  helper_method :logged_in

  def logged_in?
    !session[:person_id].nil?
  end

  def landing
  end

  def index
    @profiles = Person.all + Cat.all

  end

  def account_type
  end

  # def current_user
  #   @current_user ||= Person.find(session[:person_id])
  # end

end
