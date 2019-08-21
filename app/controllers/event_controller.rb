class EventController < ApplicationController
  def index
   
  end
  
  def search
    q = 'dublin,ie'
    @events = Event.new.events(q)
   rescue StandardError => e
      render json: { errors: e.message }, status: :unprocessable_entity
      redirect_to weather_path

   end  
  
  
end


