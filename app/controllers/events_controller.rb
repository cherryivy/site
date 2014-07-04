class EventsController < ApplicationController
  before_action only: [:new, :create] { limit_to :charity  }

  def index
  end

  def new
    @event = Event.new
  end

  def create
  end

  def show
  end

end
