class CartItemsController < ApplicationController

  def show
  end

  def create
  	cart_items = CartItem.new(cart_item_params)
  	cart_items.save
  	redirect_to cart_item_buy_path
  end

  def destroy
  end

private
	def cart_item_params
		params.require(:cart_item).permit(:cd_quantity, :cd_id, :user_id)
	end

end
