class ApplicationController < ActionController::Base
  helper_method :logged_in
  helper_method :current_user

  def logged_in?
    !session[:person_id].nil?
  end

  def landing
  end

  def index
    @profiles = Person.all + Cat.all
    byebug
    if params[:search]

    else
    @profiles = Person.all + Cat.all
    end
  end

  def account_type
  end

  def current_user
    @current_user ||= Person.find(session[:person_id])
  end

end
