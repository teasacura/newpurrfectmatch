class SessionsController < ApplicationController

  def new

    if logged_in?
      redirect_to profiles_path
    end
  end

  def create
    person = Person.find_by(email: params[:email])
    if person && person.authenticate(params[:password])
      session[:person_id] = person.id
      redirect_to person
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to login_path
    end
  end

  def destroy
    session[:person_id] = nil

    redirect_to root_path
  end
end
