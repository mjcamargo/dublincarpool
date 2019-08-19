require 'rails_helper'

RSpec.describe "trips/new", type: :view do
  before(:each) do
    assign(:trip, Trip.new(
      :date => "MyString",
      :time => "MyString",
      :pickup_location => "MyString",
      :destination => "MyString",
      :price => "9.99",
      :seats_available => "",
      :driver => nil
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

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
