class BreathingexercisesController < ApplicationController
  before_action :set_breathingexercise, only: [:show,:update,:destroy]
  def index
    breathingexercises = BreathingExercise.all
    render json: breathingexercises, status: 200
  end

  def create
    breathingexercise = BreathingExercise.create(breathingexercise_params)
    render json: breathingexercise, status: 201
  end

  def update
    @breathingexercise.update(breathingexercise_params)
    render json: @breathingexercise, status: 200
  end

  def destroy
    breathingexerciseId = @breathingexercise.id
    @breathingexercise.destroy
    render json: {message:"Zap! breathing exercise deleted", breathingexerciseId:breathingexerciseId}
  end

  def show
    render json: @breathingexercise, status: 200
  end

  private
  def breathingexercise_params
    params.permit(:round1, :round2, :round3, :user_id)
  end

  def set_breathingexercise
    @breathingexercise = BreathingExercise.find(params[:id])
  end

end 