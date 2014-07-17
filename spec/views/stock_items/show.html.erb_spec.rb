require 'rails_helper'

RSpec.describe "stock_items/show", :type => :view do
  before(:each) do
    @stock_item = assign(:stock_item, StockItem.create!(
      :name => "Name",
      :model => "Model",
      :description => "MyText",
      :legal_in_all_states => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
