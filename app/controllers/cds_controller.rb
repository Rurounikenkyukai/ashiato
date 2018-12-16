class CdsController < ApplicationController

    def index
        @cd = Cd.new
        @cds = Cd.page(params[:page])
        @cart_items = CartItem.new
    end

    def show
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
       binding.pry
       #[:search]無くてもいい
       category = params[:search][:category]
       #[:search]無くてもいい
       content = params[:search][:content]
       if category == "イベント"
         @events = Event.where(event_title: content)
       elsif category == "CD"
         @cds = Cd.where(cd_title: content)
       elsif category == "アーティスト"
         @cds = Artist.where(artist_name: content)
       else 

       end


     end

    private
    def cd_params
        params.require(:cd).permit(:cd_title, :cd_image, :cd_genre, :cd_price, :cd_stock, :cd_label,
            discs_attributes: [:id, :cd_id, :disc_number, :_destroy, musics_attributes: [:id, :disc_id, :music_title, :music_number, :artist_id ,:_destroy]]
            )
    end
end
