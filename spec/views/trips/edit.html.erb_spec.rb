require 'rails_helper'

RSpec.describe "trips/edit", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :date => "MyString",
      :time => "MyString",
      :pickup_location => "MyString",
      :destination => "MyString",
      :price => "9.99",
      :seats_available => "",
      :driver => nil
    ))
  end

  it "renders the edit trip form" do
    render

    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do

      assert_select "input[name=?]", "trip[date]"

      assert_select "input[name=?]", "trip[time]"

      assert_select "input[name=?]", "trip[pickup_location]"

      assert_select "input[name=?]", "trip[destination]"

      assert_select "input[name=?]", "trip[price]"

      assert_select "input[name=?]", "trip[seats_available]"

      assert_select "input[name=?]", "trip[driver_id]"
    end
  end
end
