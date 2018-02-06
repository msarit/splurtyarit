class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create(quote_params)
    redirect_to root_path
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end
end