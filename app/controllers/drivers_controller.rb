class DriversController < ApplicationController
  def index
    @drivers = Driver.all
    @cars = Car.all
  end

  def show
    @driver = Driver.find(params[:id])
    @cars = Car.all
  end
  
  def new
  end

  def create
    @driver = Driver.new(driver_params)
    
    @driver.save
    redirect_to @driver
  end

  private
    def driver_params
      params.require(:driver).permit(:name, :email, :date_of_birth, { :car_ids => [] }, :driver_image)
    end
end