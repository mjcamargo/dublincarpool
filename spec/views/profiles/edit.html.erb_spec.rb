require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :firstname => "MyString",
      :lastname => "MyString",
      :phonenumber => "MyString",
      :location => "MyString",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[firstname]"

      assert_select "input[name=?]", "profile[lastname]"

      assert_select "input[name=?]", "profile[phonenumber]"

      assert_select "input[name=?]", "profile[location]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
