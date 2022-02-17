class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.time :time, null: false
      t.date :date, null: false
      t.string :patient_first_name, null: false
      t.string :patient_last_name, null: false
      t.string :appointment_type
      t.integer :doctor_id, null: false
      t.timestamps
    end
  end
end
