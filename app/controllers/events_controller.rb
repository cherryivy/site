class EventsController < ApplicationController
  before_action only: [:new, :create] { limit_to :charity  }

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(user_params.merge charity_id: session[:user_id])
    if(@event.save)
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  protected

  def user_params
    ret = params.require(:event).permit(:title, :start_time, :end_time, :location, :description)
  end

end
