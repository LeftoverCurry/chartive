require 'rails_helper'

RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
      systolic: 1,
      diastolic: 1,
      mood: 1,
      users: nil
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input[name=?]", "entry[systolic]"

      assert_select "input[name=?]", "entry[diastolic]"

      assert_select "input[name=?]", "entry[mood]"

      assert_select "input[name=?]", "entry[users_id]"
    end
  end
end