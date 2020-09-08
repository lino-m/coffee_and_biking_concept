class RidesController < ApplicationController
  before_action :set_ride, only: :show

  def index
    @rides = Ride.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_ride
    @ride = Ride.find(params[:id])
  end
end
