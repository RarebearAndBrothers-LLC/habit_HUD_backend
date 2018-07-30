class ColdshowersController < ApplicationController
  before_action :set_coldshower, only: [:show,:update,:destroy]
  def index
    coldshowers = ColdShower.all
    render json: coldshowers, status: 200
  end

  def create
    coldshower = ColdShower.create(coldshower_params)
    render json: coldshower, status: 201
  end

  def update
    @coldshower.update(coldshower_params)
    render json: @coldshower, status: 200
  end

  def destroy
    coldshowerId = @coldshower.id
    @coldshower.destroy
    render json: {message:"Zap! breathing cold shower", coldshowerId:coldshowerId}
  end

  def show
    render json: @coldshower, status: 200
  end

  private
  def coldshower_params
    params.permit(:time, :user_id)
  end

  def set_coldshower
    @coldshower = ColdShower.find(params[:id])
  end

end 