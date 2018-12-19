class CdsController < ApplicationController

    def index
    end

    def show
        @cd = Cd.find(params[:id])
        @cart_items = CartItem.new
    end

    def edit
        @cd = Cd.find(params[:id])
        @cds = Cd.all
        @artists = Artist.all
        @genres = []
        @cds.each do |cd|
      if !@genres.include?([cd.cd_genre,cd.cd_genre])
        @genres.push([cd.cd_genre,cd.cd_genre])
        end
      end

        @labels = []
        @cds.each do |cd|
      if !@labels.include?([cd.cd_label,cd.cd_label])
        @labels.push([cd.cd_label,cd.cd_label])
        end
      end

        @artist_names = []
        @artists.each do |ar|
      if !@artist_names.include?([ar.artist_name,ar.artist_name])
        @artist_names.push([ar.artist_name,ar.artist_name])
        end
      end

        @artist_names_id = []
        @artists.each do |ar|
      if !@artist_names_id.include?([ar.artist_name,ar.id])
        @artist_names_id.push([ar.artist_name,ar.id])
        end
      end
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
        @cd = Cd.find(params[:id])
        if @cd.update(cd_params)
           redirect_to cd_path(@cd.id)
        else
            puts "------------------------------"
            puts @cd.errors.full_messages
            puts "------------------------------"
            redirect_to event_path(@user.id)
        end
     end

  	 def destroy
      cd = Cd.find(params[:id])
      cd.destroy
      redirect_to root_path
	   end

     def search
         category = params[:category]
         content  = params[:content]
         if    category == "イベント"
               if content.empty?
                  @events = Event.page(params[:page]).reverse_order
               else
                  @events = Event.where('event_title LIKE ?', "%#{content}%")
                  #@events = Event.where(event_title: content)
                  @events_id = []
                  @events.each do |event|
                    @events_id.push(Event.find(event.id))
                  end
                  @events = Kaminari.paginate_array(@events_id).page(params[:page])
               end
         else category == "CD"
               if content.empty?
                  @cds = Cd.page(params[:page]).reverse_order
                  @cart_items =CartItem.new
               else
                  @cds = Cd.where('cd_title LIKE ?', "%#{content}%")
                  cds_id = []
                  @cds.each do |cd|
                    cds_id.push(Cd.find(cd.id))
                  end
                  @cart_items =CartItem.new
                  @cds = Kaminari.paginate_array(cds_id).page(params[:page])
               end
         end

     end

    private
    def cd_params
        params.require(:cd).permit(:cd_title, :cd_image, :cd_genre, :cd_price, :cd_stock, :cd_label,
            discs_attributes: [:id, :cd_id, :disc_number, :_destroy, musics_attributes: [:id, :disc_id, :music_title, :music_number, :artist_id ,:_destroy]]
            )
    end
end
