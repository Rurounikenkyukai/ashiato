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
    puts params[:content]
    Cd.where(name: params[:content])
  end
end
