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
        @cd = Cd.new(cd_params)
        @cd.save
        redirect_to cd_path(@cd.id)
	end

	def update
	end

	def destroy
	end

    private
    def cd_params
        params.require(:cd).permit(:cd_title, :cd_image, :cd_genre, :cd_price, :cd_stock, :cd_label,
            discs_attributes: [:id, :cd_id, :disc_number, :_destroy, musics_attributes: [:id, :disc_id, :music_title, :music_number, :_destroy]]
            )
    end 
end
