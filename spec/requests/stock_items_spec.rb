require 'rails_helper'

RSpec.describe "StockItems", :type => :request do
  describe "GET /stock_items" do
    it "works! (now write some real specs)" do
      get stock_items_path
      expect(response.status).to be(200)
    end
  end
end
