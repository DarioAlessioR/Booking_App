class Appointment < ApplicationRecord
    validates :name, :month, :day, :service, presence: true
    validates :day, numericality: { only_integer: true, greater_than: 0, less_than: 31 }
    
end
