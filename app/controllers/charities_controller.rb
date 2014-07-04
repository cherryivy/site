class CharitiesController < ApplicationController
  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.create(user_params)
    if(@charity.save)
      redirect_to @charity
    else
      render :new
    end

  end

  def view
    @charity = Charity.find(params[:charity_id])
  end

  protected 

  def user_params
    params.require(:charity).permit(
      :name, :login, :email, :contact_person, :phone, :password, :password_confirmation)
  end
end
