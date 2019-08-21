require 'rails_helper'

RSpec.describe "weathers/show", type: :view do
  before(:each) do
    @weather = assign(:weather, Weather.create!(
      :cityId => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City/)
  end
end
