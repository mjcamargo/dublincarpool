class TripsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @profile = Profile.find_by_user_id(current_user.id)
    @trips = @profile.trips
  end
  
  def index2
   
  end
  
  # GET /trips/1
  # GET /trips/1.json
  def show
    @profile = Profile.find_by_user_id(current_user.id)
    @trip = @profile.trips.find(params[:id])
  end

  # GET /trips/new
  def new
    @profile = Profile.find_by_user_id(current_user.id)
    @trip = @profile.trips.build
  end

  # GET /trips/1/edit
  def edit
    @profile = Profile.find_by_user_id(current_user.id)
    @trip = @profile.trips.find(params[:id])
  end

  # POST /trips
  # POST /trips.json
  def create
    @profile = Profile.find_by_user_id(current_user.id)
    @trip = @profile.trips.build(params.require(:trip).permit(:date, :time, :pickup_location, :destination, :price, :seats_available, :driver_id, :profile_id))
    if @trip.save
      redirect_to profile_trip_url(@profile, @trip)
    else
     render :action => "new"
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    @profile = Profile.find_by_user_id(current_user.id)
    @trip = Trip.find(params[:id])
    if @trip.update_attributes(params.require(:trip).permit(:date, :time, :pickup_location, :destination, :price, :seats_available, :driver_id, :profile_id))
      redirect_to profile_trip_url(@profile, @trip)
    else
      render :action => "edit"
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @profile = Profile.find_by_user_id(current_user.id)
    @trip = Trip.find(params[:id])
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to profile_trips_path(@profile) }
      format.xml { head :ok }
    end
  end
  
  def findlift
     @trips = Trip.all
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:date, :time, :pickup_location, :destination, :price, :seats_available, :driver_id, :profile_id)
    end
end
