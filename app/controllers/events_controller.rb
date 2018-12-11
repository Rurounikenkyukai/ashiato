class EventsController < ApplicationController

    def index
        @events = Event.page(params[:page]).reverse_order
    end

    def show
    end

    def edit
    end

  	def create
	end

	def update
	end

	def destroy
	end

  def search
    if params[:happy] == "1"
      cd = Cd.where(params[:content])
    elsif params[:happy] =="2"
      event = Event.where(params[:content])
    else
      artist = Artist.where(params[:content])
    end
  end
end
