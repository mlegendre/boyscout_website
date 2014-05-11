class NewEventController < ApplicationController

  def show

  end

  def index

  end

  def new

  end

  def create
    @event = Event.new(new_event_params)
    @event.save
    redirect_to root_path
  end


  def new_event_params
    params.require(:new_event).permit(:title, :description)
  end

end
