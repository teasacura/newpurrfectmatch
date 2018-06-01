class SearchesController < ApplicationController

  def new
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    # render "application/index"
  end

  private

  def search_params
    params.require(:search).permit(:name, :age, :description, :location, :breed, :temperament, :sociability, :min_age_pref, :max_age_pref, :breed_pref, :temperament_pref, :num_of_cats)
  end

end
