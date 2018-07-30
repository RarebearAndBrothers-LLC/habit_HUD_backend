class LoginsController < ApplicationController
  before_action :set_login, only: [:show,:update,:destroy]
  def index
    logins = Login.all
    render json: logins, status: 200
  end

  def create
    login = Login.create(login_params)
    render json: login, status: 201
  end

  def update
    @login.update(login_params)
    render json: @login, status: 200
  end

  def destroy
    loginId = @login.id
    @login.destroy
    render json: {message:"login deleted", loginId:loginId}
  end

  def show
    render json: @login, status: 200
  end

  private
  def login_params
    params.permit(:username, :password, :user_id)
  end

  def set_login
    @login = Login.find(params[:id])
  end

end
