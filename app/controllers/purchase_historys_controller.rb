class PurchaseHistorysController < ApplicationController

	def new
	end

	def create
	end

	def update
		@purchase = PurchaseHistory.find(params[:id])
		@user = User.find(current_user.id)
		@purchase.update(purchase_params)
		redirect_back(fallback_location: admin_path(@user.id))
	end

	private
	def purchase_params 
		params.require(:purchase_history).permit(:send_status)
	end
end
