require 'rails_helper'

RSpec.describe "entries/show", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      systolic: 2,
      diastolic: 3,
      mood: 4,
      users: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
  end
end
