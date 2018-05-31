class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  # def method_name
  #   person = Person.find(session[:person_id])
  #   cat.persons.includes?(person)
  # end

  def new
    @cat = Cat.new
  end

  def show

    if !logged_in?
      redirect_to login_path
    end
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.valid?
      person = Person.find(session[:person_id])
      person.cats << @cat
      @cat.save
      redirect_to @cat
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @cat.update(cat_params)
    if @cat.save
      redirect_to @cat
    else
      render 'edit'
    end
  end

  def destroy
    @cat.delete
    redirect_to profiles
  end

  private

  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :age, :description, :location, :breed, :temperament, :sociability, :image_url)
  end
end
