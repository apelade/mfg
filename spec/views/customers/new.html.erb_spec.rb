require 'rails_helper'

RSpec.describe "customers/new", :type => :view do
  before(:each) do
    assign(:customer, Customer.new(
      :name => "MyText",
      :contact_info => "MyText",
      :rating => 1
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "textarea#customer_name[name=?]", "customer[name]"

      assert_select "textarea#customer_contact_info[name=?]", "customer[contact_info]"

      assert_select "input#customer_rating[name=?]", "customer[rating]"
    end
  end
end
