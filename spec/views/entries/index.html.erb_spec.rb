require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        systolic: 2,
        diastolic: 3,
        mood: 4,
        users: nil
      ),
      Entry.create!(
        systolic: 2,
        diastolic: 3,
        mood: 4,
        users: nil
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
