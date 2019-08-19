class BooksController < ApplicationController
  def index
    
    @profile = Profile.find_by_user_id(current_user.id)
    @books = @profile.books
  end

  def show
   # @profile = Profile.find_by_user_id(current_user.id)
  #  @book = @profile.books.find(params[:id])
  @trip = Trip.find(params[:id])

   
  end

  def new
    @profile = Profile.find_by_user_id(current_user.id)
    @book = @profile.books.build
    if (params[:id]).nil?
      redirect_to home_index_path, notice: 'No trip found.'
    else 
          @trip = Trip.find(params[:id])
    end      
  end
  
 def create
  params[:book][:status] = 'Pending Payment'
  nbSeats = params[:book][:seats].to_i
  @trip = Trip.find(params[:book][:trip_id] )
  params[:book][:total]  = nbSeats*@trip.price
  @profile = Profile.find_by_user_id(current_user.id)
  if @profile.id == @trip.profile_id
     redirect_to '/findlift'	, notice: 'You can not make this reservation.'
  else    
      @book = @profile.books.build(params.require(:book).permit(:status, :total, :seats, :trip_id))
      @book.save
      redirect_to home_index_path, notice: 'Booking was successfully created.'
  end    
 end
  
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Booking was successfully canceled.' }
      format.json { head :no_content }
    end
  end

 private

  def book_params
    params.require(:book).permit(:status, :total, :seats, :trip_id)
  end
end
