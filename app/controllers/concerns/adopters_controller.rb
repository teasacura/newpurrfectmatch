class AdoptersController < ApplicationController
  before_action :set_adopter, only: [:show, :edit, :update, :destroy]

  def new
    @adopter = Adopter.new
  end

  def show
  end

  def create
    @adopter = Adopter.new(adopter_params)
    if @adopter.save
      redirect_to @adopter
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @adopter.update(adopter_params)
    if @adopter.save
      redirect_to @adopter
    else
      render 'edit'
    end
  end

  def destroy
    @adopter.delete
    redirect_to profiles
  end

  private

  def set_adopter
    @adopter = Adopter.find(params[:id])
  end

  def adopter_params
    params.require(:adopter).permit(:name, :email, :password, :password_confirmation, :age, :description, :location, :min_age_pref, :max_age_pref, :breed_pref, :temperament_pref, :num_of_cats, :image_url)
  end

end
