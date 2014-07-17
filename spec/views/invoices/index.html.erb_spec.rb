require 'rails_helper'

RSpec.describe "invoices/index", :type => :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :details => "MyText",
        :total_cents => 1,
        :order => nil,
        :stock_item => nil
      ),
      Invoice.create!(
        :details => "MyText",
        :total_cents => 1,
        :order => nil,
        :stock_item => nil
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
