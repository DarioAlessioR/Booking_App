require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        name: "Name",
        month: "Month",
        day: 2,
        service: "Service"
      ),
      Appointment.create!(
        name: "Name",
        month: "Month",
        day: 2,
        service: "Service"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Month".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Service".to_s, count: 2
  end
end
