class EventsController < ApplicationController
    def index
        if params[:id].nil?
            @event = Event.new
            @events = Event.page(params[:page]).reverse_order
            binding.pry
        else
            @event = Event.new
            event_day = params[:event][:event_day]
            event_city = params[:event][:event_city]
            @events = Event.where(event_day: event_day).where(event_city: event_city)
            events_id = []
            @events.each do |event|
            event_id.push(event.id)
            end
        end
    end

    def show
    end

    def edit
    end

  	def create
	  end

  	def update
	  end

	  def destroy
	  end

     def event_search
        
    end

end
