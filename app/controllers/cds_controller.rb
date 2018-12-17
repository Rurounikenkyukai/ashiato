class CdsController < ApplicationController

    def index

    end

    def show
        @cd = Cd.find(params[:id])
    end

    def edit
    end

  	def create
        @user = User.find(current_user.id)
       puts "start check params"
       puts params[:cd][:cd_label]
        if params[:cd][:cd_label].blank?
           params[:cd][:cd_label] = params[:cdlabel]
           puts "check params"
           puts params[:cd][:cd_label]
        end
       puts "finish check params"
       puts params[:cd][:cd_genre]
        if params[:cd][:cd_genre].blank?
           params[:cd][:cd_genre] = params[:cdgenre]
        end
        @cd = Cd.new(cd_params)
        if @cd.save
           redirect_to cd_path(@cd.id)
        else
            puts "------------------------------"
            puts @cd.errors.full_messages
            puts "------------------------------"
            redirect_to admin_path(@user.id)
        end
	   end

	   def update
     end

  	 def destroy
	   end

     def search
      @cart_items = CartItem.new
      category = params[:search][:category]
                      #[:search]無くてもいい
      content = params[:search][:content]
                     #[:search]無くてもいい
       if category == "イベント"

              @event = Event.new
              if    content.empty?
                    @events = Event.page(params[:page]).reverse_order
              else
                    @events = Event.where(event_title: content)
                    @events_id = []
                    @events.each do |event|
                    @events_id.push(event.id)
                    end
                    @events_page = Kaminari.paginate_array(@events_id).page(params[:page])

              end

       elsif category == "CD"
              if    content.empty?
                    @cds = Cd.page(params[:page]).reverse_order
              else
                    @cds = Cd.where(cd_title: content)
                    @cds_id = []
                    @cds.each do |cd|
                    @cds_id.push(cd.id)
                    end
                    @cds_page = Kaminari.paginate_array(@cds_id).page(params[:page])
              end


       else category == "アーティスト"
              if    content.empty?
                    @cds = Cd.page(params[:page]).reverse_order
              else
                    @cds = Artist.where(artist_name: content)
                    @cds_id = []
                    @cds.each do |cd|
                    cds_id.push(cd.id)
                    end
                    @cds_page = Kaminari.paginate_array(@cds_id).page(params[:page])
              end
       end
                   render :index
     end

    private
    def cd_params
        params.require(:cd).permit(:cd_title, :cd_image, :cd_genre, :cd_price, :cd_stock, :cd_label,
            discs_attributes: [:id, :cd_id, :disc_number, :_destroy, musics_attributes: [:id, :disc_id, :music_title, :music_number, :artist_id ,:_destroy]]
            )
    end
end
