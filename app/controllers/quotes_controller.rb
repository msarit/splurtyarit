class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end
end
