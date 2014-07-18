require 'rails_helper'

RSpec.describe "customers/index", :type => :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :name => "MyName",
        :contact_info => "MyText",
        :rating => 1
      ),
      Customer.create!(
        :name => "MyText",
        :contact_info => "MyText",
        :rating => 1
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "MyName".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 3
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
