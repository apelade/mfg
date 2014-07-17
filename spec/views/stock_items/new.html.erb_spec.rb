require 'rails_helper'

RSpec.describe "stock_items/new", :type => :view do
  before(:each) do
    assign(:stock_item, StockItem.new(
      :name => "MyString",
      :model => "MyString",
      :description => "MyText",
      :legal_in_all_states => false
    ))
  end

  it "renders new stock_item form" do
    render

    assert_select "form[action=?][method=?]", stock_items_path, "post" do

      assert_select "input#stock_item_name[name=?]", "stock_item[name]"

      assert_select "input#stock_item_model[name=?]", "stock_item[model]"

      assert_select "textarea#stock_item_description[name=?]", "stock_item[description]"

      assert_select "input#stock_item_legal_in_all_states[name=?]", "stock_item[legal_in_all_states]"
    end
  end
end
