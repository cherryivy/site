class EventsController < ApplicationController
  before_action only: [:new, :create] { limit_to :charity  }

  helper_method :events_by_date

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params.merge charity_id: session[:user_id])
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

  def event_params
    ret = params.require(:event).permit(:title, :start_time, :end_time, :location, 
      :description, :cover_image, :location, :address_line_1, :address_line_2,
      :city, :state, :zip_code, :contact_person, :event_email, :phone_number)
  end

  def events_by_date(event_date)
    Event.all(order: 'start_time', conditions: ["DATE(start_time) = ?", event_date])
  end

end
