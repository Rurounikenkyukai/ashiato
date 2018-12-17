class AsiatosController < ApplicationController

  def create
    event = Event.find(params[:event_id])
    asiato = current_user.asiatos.new(event_id: event.id)
    asiato.save
    redirect_to event_path(event)
  end

  def destroy
    event= Event.find(params[:event_id])
    asiato = current_user.asiatos.find_by(event_id: event.id)
    asiato.destroy
    redirect_to event_path(event)
  end

end
