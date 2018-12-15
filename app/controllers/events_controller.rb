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
        @event = Event.new(event_params)
        @user = User.find(current_user.id)
        if @event.save
           @event.errors.full_messages
           redirect_to event_path(@event.id)
        else
           redirect_to admin_path(@user.id)
        end
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

    private

    def event_params
        params.require(:event).permit(:event_day, :event_title, :event_image, :event_city, :event_address, performers_attributes: [:id, :artist_id, :event_id, :_destroy])
    end

end
