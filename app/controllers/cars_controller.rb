class CarsController < ApplicationController
  # GET /articles
  def index
    @cars = Car.all
  end

  # GET /articles/1
  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

end
