require 'rails_helper'

RSpec.describe 'appointments/edit', type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
                                          name: 'MyString',
                                          month: 'January',
                                          day: 1,
                                          service: 'Fix car'
                                        ))
  end

  it 'renders the edit appointment form' do
    render

    assert_select 'form[action=?][method=?]', appointment_path(@appointment), 'post' do
      assert_select 'input[name=?]', 'appointment[name]'

      assert_select 'select[name=?]', 'appointment[month]'

      assert_select 'select[name=?]', 'appointment[day]'

      assert_select 'select[name=?]', 'appointment[service]'
    end
  end
end
