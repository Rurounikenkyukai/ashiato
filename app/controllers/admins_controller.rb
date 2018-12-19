class AdminsController < ApplicationController

  def show
  	@cd = Cd.new
    @cds = Cd.page(params[:cd_page]).reverse_order

  	@artist = Artist.new
  	@artists = Artist.all

  	@users = User.page(params[:user_page]).reverse_order

  	@event = Event.new
    @event.performers.build

    @user_search = User.ransack(params[:q])
    @search_result = @user_search.result


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

  private

end
