require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :status => "MyText",
      :customer => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "textarea#order_status[name=?]", "order[status]"

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"
    end
  end
end
