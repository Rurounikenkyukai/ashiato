class EventsController < ApplicationController
    def index
        if user_signed_in?
        @carts = CartItem.where(user_id: current_user.id)
        end
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
        @event   = Event.find(params[:id])
        @comment = Comment.new
        if user_signed_in?
        @carts = CartItem.where(user_id: current_user.id)
        end
    end

    def edit
        @carts = CartItem.where(user_id: current_user.id)
        if user_signed_in? && current_user.admin
        @event = Event.find(params[:id])
        @artists = Artist.all
        @artist_names_id = []
        @artists.each do |ar|
            if !@artist_names_id.include?([ar.artist_name,ar.id])
            @artist_names_id.push([ar.artist_name,ar.id])
            end
        end
        else
        redirect_to events_path
        flash[:danger] = "ERROR!このページにアクセスする権限がありません。"
        end
    end

  	def create
        @event = Event.new(event_params)
        @user = User.find(current_user.id)
        if @event.save
           @event.errors.full_messages
           redirect_to event_path(@event.id)
           flash[:success] = "イベントを追加しました。"
        else
           redirect_to admin_path(@user.id)
           flash[:danger] = "ERROR!イベントの追加に失敗しました。記入内容を確認してください。"
        end
	end

    def update
        @event = Event.find(params[:id])
        if @event.update(event_params)
           redirect_to event_path(@event.id)
           flash[:success] = "イベント情報の更新に成功しました。"
        else
           redirect_to edit_event_path(@event.id)
           flash[:danger] = "ERROR!イベント情報の更新に失敗しました。記入内容を確認してください。"
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
        if events_id.blank?
           flash[:danger] = "検索結果が見つかりませんでした"
        end
    end

    private

    def event_params
        params.require(:event).permit(:event_day, :event_title, :event_image, :event_city, :event_address, performers_attributes: [:id, :artist_id, :event_id, :_destroy])
    end

end
