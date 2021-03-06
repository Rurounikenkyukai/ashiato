class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def show
    if params[:no_cd]
      @no_cds = params[:no_cd]
    end
    @carts = CartItem.where(user_id: current_user.id)
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
    if CartItem.find_by(cd_id: cart_item.cd_id,user_id: current_user.id)
      redirect_to cart_item_path(current_user.id)
      flash[:danger] = "ERROR!すでに商品がカートに入っています。"
    else
      cart_item.save
      redirect_to cart_item_buy_path
      flash[:success] = "カートに商品を追加しました。"
    end
 end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_item_path(current_user.id)
    flash[:success] = "カートの商品を削除しました。"
  end



private
	def cart_item_params
		params.require(:cart_item).permit(:cd_quantity, :cd_id, :user_id)
	end
end
