require 'rails_helper'

RSpec.describe "customers/edit", :type => :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "MyText",
      :contact_info => "MyText",
      :rating => 1
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "textarea#customer_name[name=?]", "customer[name]"

      assert_select "textarea#customer_contact_info[name=?]", "customer[contact_info]"

      assert_select "input#customer_rating[name=?]", "customer[rating]"
    end
  end
end
