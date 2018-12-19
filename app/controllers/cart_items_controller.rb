class CartItemsController < ApplicationController

  def show
    @purchase = PurchaseHistory.new
    @cart_items = CartItem.where(user_id: current_user.id)
    @total_price = 0
    @cart_items.each do |c|
    @total_price += c.cd.cd_price * c.cd_quantity
    end
  end

  def create
  	cart_item = CartItem.new(cart_item_params)
    cart_item.user_id = current_user.id
  	cart_item.save
  	redirect_to cart_item_buy_path
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_item_path(current_user.id)
  end



private
	def cart_item_params
		params.require(:cart_item).permit(:cd_quantity, :cd_id, :user_id)
	end
end
