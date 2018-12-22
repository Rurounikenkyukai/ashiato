class ArtistsController < ApplicationController

	def create
	   @user = User.find(current_user.id)
	   @artist = Artist.new(artist_params)
	   @artist.save
	   redirect_back(fallback_location: admin_path(@user.id))
	   flash[:success] = "アーティストの追加に成功しました。"
	end

	def update
	end

	def destroy
	end

   private
   def artist_params
   	params.require(:artist).permit(:artist_name)
   end
end
