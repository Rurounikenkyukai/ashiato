class EventsController < ApplicationController
    def index
          if params[:events_id].nil?
            @event = Event.new
            @events = Event.page(params[:page]).reverse_order
        else
            @event = Event.new
            @events_array = []
            params[:events_id].each do |a|
            @events_array.push(Event.find(a))
            end
            @events = Kaminari.paginate_array(@events_array).page(params[:page])
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
        event_day = params[:event][:event_day]
        event_city = params[:event][:event_city]
        @events = Event.where(event_day: event_day).where(event_city: event_city)
        events_id = []
        @events.each do |event|
        events_id.push(event.id)
        end
        redirect_to events_path(events_id: events_id)
    end

end