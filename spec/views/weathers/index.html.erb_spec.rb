require 'rails_helper'

RSpec.describe "weathers/index", type: :view do
  before(:each) do
    assign(:weathers, [
      Weather.create!(
        :cityId => "City"
      ),
      Weather.create!(
        :cityId => "City"
      )
    ])
  end

  it "renders a list of weathers" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
