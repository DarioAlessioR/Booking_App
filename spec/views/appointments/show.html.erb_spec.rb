require 'rails_helper'

RSpec.describe 'appointments/show', type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
                                          name: 'Name',
                                          month: 'Month',
                                          day: 2,
                                          service: 'Service'
                                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Month/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Service/)
  end
end
