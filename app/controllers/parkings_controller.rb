class ParkingsController < ApplicationController
  def index
    # @parkings = Parking.all.where(owner: current_person)
    @parkings = Parking.search(search_params)
  end

  def show
    @parking = Parking.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    flash[:error] = "There is no such route"
    redirect_to action: "index"
  end

  def new
    @parking = Parking.new
    @parking.build_address
  end

  def edit
    @parking = Parking.includes(:address).find(params[:id])
  end

  def create
    @parking = Parking.new(parking_params)
    @parking.owner_id = current_person.id

    if @parking.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @parking = Parking.find(params[:id])

    if @parking.update(parking_params)
      redirect_to @parking
    else
      render 'edit'
    end
  end

  def destroy
    @parking = Parking.find(params[:id])
    @parking.destroy

    redirect_to parkings_path
  end

  private
  def parking_params
    params.require(:parking).permit(:hour_price, :day_price, :places, :kind, address_attributes: [:city, :street, :zip_code])
  end

  def search_params
    params.permit(:min_hour_price, :max_hour_price, :min_day_price, :max_day_price, :search, :private, :public)
  end
end
