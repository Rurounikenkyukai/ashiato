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
        @cd = Cd.new(cd_params)
        @user = User.find(current_user.id)
        if params[:cd_label].blank?
           params[:cd_label] =params[:cdlabel]
        end
        if params[:cd_genre].blank?
           params[:cd_genre] =params[:cdgenre]
        end
        if @cd.save
           @cd.errors.full_messages
           redirect_to cd_path(@cd.id)
        else
           redirect_to admin_path(@user.id)
        end

        
        
	end

	def update
	end

	def destroy
	end

    private
    def cd_params
        params.require(:cd).permit(:cd_title, :cd_image, :cd_genre, :cd_price, :cd_stock, :cd_label,
            discs_attributes: [:id, :cd_id, :disc_number, :_destroy, musics_attributes: [:id, :disc_id, :music_title, :music_number, :_destroy, recording_artists_attributes: [:id, :music_id, :artist_id, :_destroy]]]
            )
    end 
end
