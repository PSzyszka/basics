class PlaceRentsController < ApplicationController
  before_action :authenticate_account!

  def index
    @place_rents = PlaceRent.all
  end

  def show
    @place_rent = PlaceRent.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    flash[:error] = "There is no such route"
    redirect_to action: "index"
  end

  def new
    @place_rent = PlaceRent.new
    @place_rent.build_car
    @place_rent.build_parking
    @parking_id = params[:parking_id]
  end

  def create
    @place_rent = PlaceRent.new(place_rent_params)

    if @place_rent.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def destroy
    @place_rent = PlaceRent.find(params[:id])
    @place_rent.destroy

    redirect_to place_rents_path
  end

  private
  def place_rent_params
    params.require(:place_rent).permit(:starts_at, :ends_at, :car_id, :parking_id)
  end
end
