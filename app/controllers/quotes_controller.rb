class QuotesController < ApplicationController
  def index
    quotes = Quote.all
    render json: { status: 200, quote: quotes }
  end

  def show
    quote = Quote.find(params[:id])
    render json: {status: 200, quote: quote}
  end
end
