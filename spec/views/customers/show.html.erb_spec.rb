require 'rails_helper'

RSpec.describe "customers/show", :type => :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "MyText",
      :contact_info => "MyText",
      :rating => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
