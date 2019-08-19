require 'rails_helper'

RSpec.describe "trips/show", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :date => "Date",
      :time => "Time",
      :pickup_location => "Pickup Location",
      :destination => "Destination",
      :price => "9.99",
      :seats_available => "",
      :driver => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/Pickup Location/)
    expect(rendered).to match(/Destination/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
