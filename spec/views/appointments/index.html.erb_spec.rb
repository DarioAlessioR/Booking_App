require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        name: "Name",
        month: "April",
        day: 2,
        service: "Fix car"
      ),
      Appointment.create!(
        name: "Name",
        month: "April",
        day: 2,
        service: "Fix car"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "strong", text: "Name".to_s, count: 2
    assert_select "strong", text: "April".to_s, count: 2
    assert_select "strong", text: 2.to_s, count: 2
    assert_select "strong", text: "Fix car".to_s, count: 2
  end
end
