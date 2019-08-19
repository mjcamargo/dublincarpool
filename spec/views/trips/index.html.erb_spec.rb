require 'rails_helper'

RSpec.describe "trips/index", type: :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :date => "Date",
        :time => "Time",
        :pickup_location => "Pickup Location",
        :destination => "Destination",
        :price => "9.99",
        :seats_available => "",
        :driver => nil
      ),
      Trip.create!(
        :date => "Date",
        :time => "Time",
        :pickup_location => "Pickup Location",
        :destination => "Destination",
        :price => "9.99",
        :seats_available => "",
        :driver => nil
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Pickup Location".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
