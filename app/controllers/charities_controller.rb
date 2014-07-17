class CharitiesController < ApplicationController
  before_action only: [:new, :create] { limit_to :super_admin }

  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.create(charity_params.merge status: "Created")
    if(@charity.save)
      redirect_to @charity
    else
      render :new
    end
  end

  def show
    @charity = Charity.find(params[:id])
  end

  protected 

  def charity_params
    params.require(:charity).permit(
      :name, :login, :email, :contact_person, :phone, 
        :password, :password_confirmation, :full_legal_name,
        :ein, :address_line_1, :address_line_2, :city, :state, :zip_code, :mission)
  end
end
