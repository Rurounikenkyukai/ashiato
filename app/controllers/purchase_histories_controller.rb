class PurchaseHistoriesController < ApplicationController
	def new
		@carts = CartItem.where(user_id: current_user.id)
	end

	def create
		@user = User.find(current_user.id)
		if params[:purchase_history].blank?
			@purchase = PurchaseHistory.new
		else
            @purchase = PurchaseHistory.new(purchase_params)
        end
        @purchase.purchase_at = Date.today
		@purchase.user_id = current_user.id
		@cart_items = CartItem.where(user_id: current_user.id)
		cart = []
		@cart_items.each do |c|
			if c.cd_quantity > c.cd.cd_stock
		       cart.push(c.cd.id)
		    end
		end
		if cart.empty?
		if params[:buy1]
			@purchase.send_name = @user.first_name
			@purchase.send_postal_code = @user.postal_code
			@purchase.send_address = @user.address
			if  @purchase.save
				@cart_items.each do |cart|
			   	    @purchase_i = PurchaseItem.new
			   	    @purchase_i.purchase_history_id = @purchase.id
		            @purchase_i.purchase_cd_title = cart.cd.cd_title
		            @purchase_i.purchase_cd_image_id = cart.cd.cd_image_id
		            @purchase_i.purchase_cd_price = cart.cd.cd_price  
		            @purchase_i.purchase_cd_quantity = cart.cd_quantity
		            @purchase_i.cd_id = cart.cd.id
		            @purchase_i.save
		        end
		        cds = Cd.where(id: @purchase_i.cd_id)
		        cds.each do |c|
		            @pur = PurchaseItem.find_by(cd_id: c.id)
		            c.cd_stock -= @pur.purchase_cd_quantity
		            c.update(cd_stock: c.cd_stock)
		        end
		       	@cart_items.destroy_all


		        redirect_to new_purchase_history_path
			else
		        redirect_to cart_item_path(@user.id)
		        flash[:danger] = "ERROR!購入に失敗しました。登録情報をご確認ください。"
			end			
		else
			if @purchase.save
			    @cart_items.each do |cart|
			   	    @purchase_i = PurchaseItem.new
			   	    @purchase_i.purchase_history_id = @purchase.id
		            @purchase_i.purchase_cd_title = cart.cd.cd_title
		            @purchase_i.purchase_cd_image_id = cart.cd.cd_image_id
		            @purchase_i.purchase_cd_price = cart.cd.cd_price  
		            @purchase_i.purchase_cd_quantity = cart.cd_quantity
		            @purchase_i.cd_id = cart.cd.id
		            @purchase_i.save
		        end
		        cds = Cd.where(id: @purchase_i.cd_id)
		        cds.each do |c|
		            @pur = PurchaseItem.find_by(cd_id: c.id)
		            c.cd_stock -= @pur.purchase_cd_quantity
		            c.update(cd_stock: c.cd_stock)
		        end
		        @cart_items.destroy_all
			    redirect_to new_purchase_history_path
			else				
			   redirect_to cart_item_path(@user.id)
			   flash[:danger] = "ERROR!購入に失敗しました。登録情報をご確認ください。"
			end
		end
	    else
	    @no_cds = []
	    cart.each do |n|
	    	no_cd = Cd.find_by(id: n)
	    	@no_cds.push(no_cd.cd_title)
	    end
		redirect_to cart_item_path(id: 0,no_cd: @no_cds)
		flash[:danger] = "申し訳ございません。カートの中の商品に在庫が切れてしまったものがあります。"
	    end
	end


	def update
		@purchase = PurchaseHistory.find(params[:id])
		@user = User.find(current_user.id)
		@purchase.update(purchase_params)
		redirect_back(fallback_location: admin_path(@user.id))
	end
    
	private
	def purchase_params
		params.require(:purchase_history).permit(:send_status,:send_name,:send_postal_code,:send_address,:purchase_at, purchase_items_attributes: [:id,:purchase_history_id,:purchase_history_image,:purchase_cd_price,:purchase_cd_quantity,:cd_id,:_destroy])
	end
end
