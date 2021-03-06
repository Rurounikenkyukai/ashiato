class CdsController < ApplicationController

    def index
    end

    def show
        @cd = Cd.find(params[:id])
        @cart_items = CartItem.new
      if user_signed_in?
        @carts = CartItem.where(user_id: current_user.id)
      end
    end

    def edit
       @carts = CartItem.where(user_id: current_user.id)
      if user_signed_in? && current_user.admin
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
    else
      redirect_to events_path
      flash[:danger] = "ERROR!このページにアクセスする権限がありません。"
    end
   end

     def create
       @user = User.find(current_user.id)
       if params[:cd][:cd_label].blank?
          params[:cd][:cd_label] = params[:cdlabel]
       end
       if params[:cd][:cd_genre].blank?
          params[:cd][:cd_genre] = params[:cdgenre]
       end

          @cd = Cd.new(cd_params)
          if @cd.cd_stock < 0
            redirect_to admin_path(@user.id)
            flash[:danger] = "ERROR!CDの追加に失敗しました。在庫数は0以下に指定できません。"
          elsif @cd.cd_price < 0
            redirect_to admin_path(@user.id)
            flash[:danger] = "ERROR!CDの追加に失敗しました。値段は0以下に指定できません。"
          elsif @cd.save
            redirect_to cd_path(@cd.id)
            flash[:success] = "CDの追加に成功しました。"
          else
            redirect_to admin_path(@user.id)
            flash[:danger] = "ERROR!CDの追加に失敗しました。記入内容を確認してください。"
          end
    end

    def update
       if params[:cd][:cd_label].blank?
          params[:cd][:cd_label] = params[:cdlabel]
       end

       if params[:cd][:cd_genre].blank?
          params[:cd][:cd_genre] = params[:cdgenre]
       end
       @cd = Cd.find(params[:id])

       if @cd.update(cd_params)
          redirect_to cd_path(@cd.id)
          flash[:success] = "CDの編集に成功しました。"
       else
           redirect_to event_path(@user.id)
           flash[:danger] = "ERROR!CDの編集に失敗しました。記入内容を確認してください。"
       end

    end


  	 def destroy
      cd = Cd.find(params[:id])
      cd.destroy
      redirect_to root_path
	   end

     def search
      if user_signed_in?
      @carts = CartItem.where(user_id: current_user.id)
      end
      @cart_items =CartItem.new
      category = params[:category]
      content  = params[:content]

         if params[:id]
                  @artists = Artist.where(id: params[:id])
                  artists_id = []
                  @artists.each do |artist|
                    artists_id.push(Artist.find(artist.id))
                  end
                  @cart_items =CartItem.new
                  @artists = Kaminari.paginate_array(artists_id).page(params[:page])
         elsif category == "イベント"
               if content.empty?
                  @events = Event.page(params[:page]).reverse_order
               else
                  @events = Event.where('event_title LIKE ?', "%#{content}%")
                  events_id = []
                  @events.each do |event|
                    events_id.push(Event.find(event.id))
                  end
                  if @events.empty?
                    flash.now[:danger] = "ERROR!検索結果はありません。"
                    @events = Event.page(params[:page]).reverse_order
                  else
                    @events = Kaminari.paginate_array(events_id).page(params[:page])
                  end
               end
         elsif category == "CD"
               if content.empty?
                 @cds = Cd.page(params[:page]).reverse_order
                 @cart_items =CartItem.new
               else
                  @cart_items =CartItem.new
                  @cds = Cd.where('cd_title LIKE ?', "%#{content}%")
                  cds_id = []
                  @cds.each do |cd|
                    cds_id.push(Cd.find(cd.id))
                  end
                  if @cds.empty?
                    flash.now[:danger] = "ERROR!検索結果はありません。"
                  @cds = Cd.page(params[:page]).reverse_order
                  else
                  @cds = Kaminari.paginate_array(cds_id).page(params[:page])
                  end
               end
          elsif category == "アーティスト"
               if content.empty?
                  @artists = Artist.page(params[:page]).reverse_order
                  @cart_items =CartItem.new
               else
                  @cart_items =CartItem.new
                  @artists = Artist.where('artist_name LIKE ?', "%#{content}%")
                  artists_id = []
                  @artists.each do |artist|
                    artists_id.push(Artist.find(artist.id))
                  end
                  if @artists.empty?
                    flash.now[:danger] = "ERROR!検索結果はありません。"
                    @artists = Artist.page(params[:page]).reverse_order
                  else
                  @artists = Kaminari.paginate_array(artists_id).page(params[:page])
                  end
               end
            else
                @events = Event.page(params[:page]).reverse_order
         end

     end

    private
    def cd_params
        params.require(:cd).permit(:cd_title, :cd_image, :cd_genre, :cd_price, :cd_stock, :cd_label,
            discs_attributes: [:id, :cd_id, :disc_number, :_destroy, musics_attributes: [:id, :disc_id, :music_title, :music_number, :artist_id ,:_destroy]]
            )
    end
end
