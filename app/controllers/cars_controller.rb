class CarsController < ApplicationController
  def index
    @cars = Car.where(owner_id: current_person.id)
  end

  def show
    @car = Car.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    flash[:error] = "There is no such route"
    redirect_to action: "index"
  end

  def new
    @car = Car.new
    @car.build_owner
  end

  def edit
    @car = Car.find(params[:id])
    @car.build_owner
  end

  def create
    @car = Car.new(car_params)
    @car.owner_id = current_person.id
    if @car.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      redirect_to @car
    else
      render 'edit'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to cars_path
  end

  private
  def car_params
    params.require(:car).permit(:registration_number, :model, :owner, cars_attributes: [:first_name, :last_name])
  end
end
