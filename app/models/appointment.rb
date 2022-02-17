class Appointment < ApplicationRecord

    validates :patient_first_name, presence: true
    validates :patient_last_name, presence: true
    validates :appointment_type, presence: true
    validates :doctor_id, presence: true
    validates :date, presence: true
    validates :time, presence: true

    belongs_to :doctor,
        primary_key: :id,
        foreign_key: :doctor_id,
        class_name: :Doctor

end