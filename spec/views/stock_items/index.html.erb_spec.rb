require 'rails_helper'

RSpec.describe "stock_items/index", :type => :view do
  before(:each) do
    assign(:stock_items, [
      StockItem.create!(
        :name => "Name",
        :model => "Model",
        :description => "MyText",
        :legal_in_all_states => false
      ),
      StockItem.create!(
        :name => "Name",
        :model => "Model",
        :description => "MyText",
        :legal_in_all_states => false
      )
    ])
  end

  it "renders a list of stock_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
