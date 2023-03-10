require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      name: "MyString",
      month: "MyString",
      day: 1,
      service: "MyString"
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input[name=?]", "appointment[name]"

      assert_select "select[name=?]", "appointment[month]"

      assert_select "select[name=?]", "appointment[day]"

      assert_select "select[name=?]", "appointment[service]"

    end
  end
end
