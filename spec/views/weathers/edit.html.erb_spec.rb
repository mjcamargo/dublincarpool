require 'rails_helper'

RSpec.describe "weathers/edit", type: :view do
  before(:each) do
    @weather = assign(:weather, Weather.create!(
      :cityId => "MyString"
    ))
  end

  it "renders the edit weather form" do
    render

    assert_select "form[action=?][method=?]", weather_path(@weather), "post" do

      assert_select "input[name=?]", "weather[cityId]"
    end
  end
end
