class ApplicationController < ActionController::Base

  def landing
  end

  def index
    @profiles = Person.all + Cat.all
  end

  def account_type
  end
end
