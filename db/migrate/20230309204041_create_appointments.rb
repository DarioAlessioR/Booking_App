class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :month
      t.integer :day
      t.string :service

      t.timestamps
    end
  end
end
