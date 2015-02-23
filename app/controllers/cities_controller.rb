class CitiesController < ApplicationController

  before_action :set_city, only: [:edit, :destroy]

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to cities_path, notice: "Successfuly created city."
    else
      render :new
    end
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update(city_params)
      redirect_to cities_path, notice: "Successfuly updated city."
    else
      render :edit
    end
  end

  def destroy
    return unless @city.destroy
    redirect_to cities_path, notice: 'City was successfully deleted.'
  end

  def index
    @cities = City.all
  end

  private

  def set_city
    @city ||= City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(:name, :short_name)
  end
end
