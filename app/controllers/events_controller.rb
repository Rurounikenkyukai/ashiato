class EventsController < ApplicationController
    def index
      @q = Event.ransack(params[:q])
      @people = @q.result(distinct: true)
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

    def search
    ##  if params[:happy] == "1"
      ##  @cd = Cd.where(params[:content])
      ##elsif params[:happy] =="2"
        @events = Event.where(params[:content])
      ##else
      ##  @artist = Artist.where(params[:content])
    ##  end
    end

<<<<<<< HEAD
	  def destroy
	  end
end
=======

     def event_search
        event_day = params[:event][:event_day]
        event_city = params[:event][:event_city]
        @events = Event.where(event_day: event_day).where(event_city: event_city)
        events_id = []
        @events.each do |event|
        events_id.push(event.id)
        end
        redirect_to events_path(events_day: events_id)
    end

end
>>>>>>> 0646da04a5391e4ce877215bdefe887675136a83
