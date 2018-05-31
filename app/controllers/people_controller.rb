class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def new
    @person = Person.new
  end

  def show
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      session[:person_id] = @person.id
      redirect_to profiles_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @person.update(person_params)
    if @person.save
      redirect_to @person
    else
      render 'edit'
    end
  end

  def destroy
    byebug
    @person.delete
    redirect_to root_path
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :email, :password, :password_confirmation, :age, :description, :location, :min_age_pref, :max_age_pref, :breed_pref, :temperament_pref, :num_of_cats, :image_url)
  end

end
