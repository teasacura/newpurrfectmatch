class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to profiles
    else
      render 'new'
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:name, :password, :password_field)
  end
end
