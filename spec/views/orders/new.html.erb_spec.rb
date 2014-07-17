require 'rails_helper'

RSpec.describe "orders/new", :type => :view do
  before(:each) do
    assign(:order, Order.new(
      :status => "MyText",
      :customer => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "textarea#order_status[name=?]", "order[status]"

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"
    end
  end
end
