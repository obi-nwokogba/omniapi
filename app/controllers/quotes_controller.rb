class QuotesController < ApplicationController
  def index
    render json: Quote.all
    render json: { status: 200, quote: quotes }
  end

  def show
    render json: {status: 200, Quote.find(params[:id])}
  end
end
