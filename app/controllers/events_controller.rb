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
        @event = Event.find(params[:id])
        @comment = Comment.new
    end

    def edit
        @event = Event.find(params[:id])

        @artists = Artist.all
        @artist_names_id = []
        @artists.each do |ar|
            if !@artist_names_id.include?([ar.artist_name,ar.id])
            @artist_names_id.push([ar.artist_name,ar.id])
            end
        end
    end

  	def create
        @event = Event.new(event_params)
        @user = User.find(current_user.id)
        if @event.save
           @event.errors.full_messages
           redirect_to event_path(@event.id)
        else
            puts "------------------------------"
            puts @event.errors.full_messages
            puts "------------------------------"
           redirect_to admin_path(@user.id)
        end
	end

    def update
        @event = Event.find(params[:id])
        if @event.update(event_params)
           redirect_to event_path(@event.id)
        else
           redirect_to edit_event_path(@event.id)
        end
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_path(@event)
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

    private

    def event_params
        params.require(:event).permit(:event_day, :event_title, :event_image, :event_city, :event_address, performers_attributes: [:id, :artist_id, :event_id, :_destroy])
    end

end
