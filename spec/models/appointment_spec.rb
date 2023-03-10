require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it 'is not valid without a name' do
    appointment = Appointment.new(name: nil)
    expect(appointment).to_not be_valid
  end

  it 'is not valid without a month' do
    appointment = Appointment.new(month: nil)
    expect(appointment).to_not be_valid
  end

  it 'is not valid without a day' do
    appointment = Appointment.new(day: nil)
    expect(appointment).to_not be_valid
  end

  it 'is not valid without a service' do
    appointment = Appointment.new(service: nil)
    expect(appointment).to_not be_valid
  end
end
