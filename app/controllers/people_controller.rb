class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  before_action :check_person_id, only: [:edit, :update, :destroy]
  before_action :require_login, except:[:new, :create]

  def new
    @person = Person.new
  end

  def show

  end

  def create
    @person = Person.new(person_params)
    if @person.save
      session[:person_id] = @person.id
      redirect_to @person
    else
      flash[:error] = @person.errors.full_messages
      redirect_to new_person_path
    end
  end

  def edit

  end

  def update
    @person.update(person_params)
    if @person.save
      redirect_to @person
    else
      flash[:error] = @person.errors
      render 'edit'
    end
  end

  def destroy
    @person.delete
    redirect_to root_path
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :email, :password, :password_confirmation, :age, :description, :location, :min_age_pref, :max_age_pref, :breed_pref, :temperament_pref, :num_of_cats, :image_url, :admin)
  end

  def check_person_id
    unless session[:person_id] == @person.id || Person.find(session[:person_id]).admin?
      redirect_to login_path
    end
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path # halts request cycle
    end
  end

end
