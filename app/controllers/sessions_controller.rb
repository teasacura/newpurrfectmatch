class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to profiles_path
    end
  end

  def create
    person = Person.find_by(email: params[:email])
    if person.authenticate(params[:password])
      session[:person_id] = person.id
      redirect_to profiles_path
    else
      render 'new'
    end
  end

  def destroy
    session[:person_id] = nil

    redirect_to root
  end
end
