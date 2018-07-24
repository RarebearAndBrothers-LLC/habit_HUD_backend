class JournalsController < ApplicationController
  before_action :set_journal, only: [:show,:update,:destroy]
  def index
    journals = Journal.all
    render json: journals, status: 200
  end

  def create
    journal = Journal.create(journal_params)
    render json: journal, status: 201
  end

  def update
    @journal.update(journal_params)
    render json: @journal, status: 200
  end

  def destroy
    journalId = @journal.id
    @journal.destroy
    render json: {message:"Zap! journal deleted", journalId:journalId}
  end

  def show
    render json: @journal, status: 200
  end

  private
  def journal_params
    params.permit(:body, :user_id)
  end

  def set_journal
    @journal = Journal.find(params[:id])
  end

end 