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
    if params[:search]
      @profiles = params[:search].constantize.all
    else
      @profiles = Person.all + Cat.all
    end
  end

  def about

  end

  def account_type
  end

  def current_user
    @current_user ||= Person.find(session[:person_id])
  end

end
