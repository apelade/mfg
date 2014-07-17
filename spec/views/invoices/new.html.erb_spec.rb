require 'rails_helper'

RSpec.describe "invoices/new", :type => :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :details => "MyText",
      :total_cents => 1,
      :order => nil,
      :stock_item => nil
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "textarea#invoice_details[name=?]", "invoice[details]"

      assert_select "input#invoice_total_cents[name=?]", "invoice[total_cents]"

      assert_select "input#invoice_order_id[name=?]", "invoice[order_id]"

      assert_select "input#invoice_stock_item_id[name=?]", "invoice[stock_item_id]"
    end
  end
end
