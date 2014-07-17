require 'rails_helper'

RSpec.describe "stock_items/edit", :type => :view do
  before(:each) do
    @stock_item = assign(:stock_item, StockItem.create!(
      :name => "MyString",
      :model => "MyString",
      :description => "MyText",
      :legal_in_all_states => false
    ))
  end

  it "renders the edit stock_item form" do
    render

    assert_select "form[action=?][method=?]", stock_item_path(@stock_item), "post" do

      assert_select "input#stock_item_name[name=?]", "stock_item[name]"

      assert_select "input#stock_item_model[name=?]", "stock_item[model]"

      assert_select "textarea#stock_item_description[name=?]", "stock_item[description]"

      assert_select "input#stock_item_legal_in_all_states[name=?]", "stock_item[legal_in_all_states]"
    end
  end
end
