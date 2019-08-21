class WeathersController < ApplicationController
  before_action :set_weather, only: [:show, :edit, :update, :destroy]

  def getinfoweather
    if params[:search_weather].to_s.present?
        city = params[:search_weather]
        @weather = Weather.winfo(city)
        redirect_to(weathers_path(@weather))
    else 
      redirect_to '/weather'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather
      @weather = Weather.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weather_params
      params.require(:weather).permit(:cityId)
    end
end
