# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "donations/edit" do
  before(:each) do
    @donation = assign(:donation, stub_model(Donation))
  end

  it "renders the edit donation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do
    end
  end
end
