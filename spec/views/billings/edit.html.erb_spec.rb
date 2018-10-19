require 'rails_helper'

RSpec.describe "billings/edit", type: :view do
  before(:each) do
    @billing = assign(:billing, Billing.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit billing form" do
    render

    assert_select "form[action=?][method=?]", billing_path(@billing), "post" do

      assert_select "input[name=?]", "billing[name]"
    end
  end
end
