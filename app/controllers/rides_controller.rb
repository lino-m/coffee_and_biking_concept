class RidesController < ApplicationController
  def index
    @rides = Ride.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
