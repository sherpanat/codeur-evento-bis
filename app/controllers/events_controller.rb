class EventsController < ApplicationController
  def index
    @events = Event.where('date > ?', 11.days.ago).decorate
  end
end
