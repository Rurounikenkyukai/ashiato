class EventsController < ApplicationController
    def index
        @event = Event.new
        if params["events_id"] == nil
            @events = Event.page(params[:page]).reverse_order
        else
            @events = []
            if params["events_id"] != ["0"]
                params["events_id"].each do |a|
                    @events.push(Event.find(a.to_i))
                end
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

    def search
    ##  if params[:happy] == "1"
      ##  @cd = Cd.where(params[:content])
      ##elsif params[:happy] =="2"
        @events = Event.where(params[:content])
      ##else
      ##  @artist = Artist.where(params[:content])
    ##  end
    end


     def event_search
        event_day = params[:event][:event_day]
        event_city = params[:event][:event_city]
        @events = Event.where(event_day: event_day).where(event_city: event_city)
        events_id = []
        @events.each do |event|
        event_id.push(event.id)
    end
        if events_id == []
        events_id = [0]
        end
        redirect_to events_path(events_id: events_id)
    end

end
