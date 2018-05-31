class ApplicationController < ActionController::Base
  helper_method :logged_in

  def logged_in?
    !session[:person_id].nil?
  end

  def landing
  end

  def index
    @profiles = Person.all + Cat.all

    if !logged_in?
      redirect_to login_path
    end
  end

  def account_type
  end
end
