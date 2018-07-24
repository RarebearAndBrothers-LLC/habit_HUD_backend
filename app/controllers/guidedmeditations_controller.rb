class GuidedmeditationsController < ApplicationController
  before_action :set_guidedmeditation, only: [:show,:update,:destroy]
  def index
    guidedmeditations = GuidedMeditation.all
    render json: guidedmeditations, status: 200
  end

  def create
    guidedmeditation = GuidedMeditation.create(guidedmeditation_params)
    render json: guidedmeditation, status: 201
  end

  def update
    @guidedmeditation.update(guidedmeditation_params)
    render json: @guidedmeditation, status: 200
  end

  def destroy
    guidedmeditationId = @guidedmeditation.id
    @guidedmeditation.destroy
    render json: {message:"Zap! guided meditation deleted", guidedmeditationId:guidedmeditationId}
  end

  def show
    render json: @guidedmeditation, status: 200
  end

  private
  def guidedmeditation_params
    params.permit(:before, :after, :insights, :user_id)
  end

  def set_guidedmeditation
    @guidedmeditation = GuidedMeditation.find(params[:id])
  end

end 