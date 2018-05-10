require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
  describe "quotes#index action" do
    it "should display a random quote from the database" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end