require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :firstname => "Firstname",
      :lastname => "Lastname",
      :phonenumber => "Phonenumber",
      :location => "Location",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Phonenumber/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(//)
  end
end
