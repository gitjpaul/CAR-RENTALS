class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @bookings = Booking.all
  end

  # GET /articles/1
  def show
  end


  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id]) #ici on va rattacher la voiture actuelle au booking
    @booking.car = @car
    @booking.user = current_user
    @booking.total_price = @car.price_per_day * (@booking.end_date - @booking.start_date).to_i
    if @booking.save
      redirect_to car_booking_path(@car, @booking), notice: 'Booking was successfully created.'
    else
      render "cars/show" # carS car ca appelle le controller
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :user_id, :car_id)
    end

end
