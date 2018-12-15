class CdsController < ApplicationController

    def index
        @cd = Cd.new
        @cds = Cd.page(params[:page])
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

    private
    def cd_params
        params.require(:cd).permit(:cd_title, :cd_image, :cd_genre, :cd_price, :cd_stock, :cd_label,
            discs_attributes: [:id, :cd_id, :disc_number, :_destroy, musics_attributes: [:id, :disc_id, :music_title, :music_number, :_destroy, recording_artists_attributes: [:id, :music_id, :artist_id, :_destroy]]]
            )
    end 
end
