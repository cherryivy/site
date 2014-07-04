class PhilanthropistsController < ApplicationController
  def new
    @philanthropist = Philanthropist.new
  end

  def create
    @philanthropist = Philanthropist.new(user_params)
    if(@philanthropist.save)
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
    @philanthropist = Philanthropist.find(params[:id])
  end

  protected 

  def user_params
    params.require(:philanthropist).permit(:name, :login, :email, :password, :password_confirmation)
  end

end
