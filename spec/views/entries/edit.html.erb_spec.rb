require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      systolic: 1,
      diastolic: 1,
      mood: 1,
      users: nil
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input[name=?]", "entry[systolic]"

      assert_select "input[name=?]", "entry[diastolic]"

      assert_select "input[name=?]", "entry[mood]"

      assert_select "input[name=?]", "entry[users_id]"
    end
  end
end
