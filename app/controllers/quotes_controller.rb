class QuotesController < ApplicationController
  def index
    # quotes = Quote.all
    # render json: { status: 200, quote: quotes }
    quote = Quote.all.sample
    render json: { status: 200, quote: quote }
  end

  def show
    quote = Quote.find(params[:id])
    render json: {status: 200, quote: quote}
  end

  def randomquote
    render json: Quote.all.sample
  end
end
