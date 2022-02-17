class Doctor < ApplicationRecord

    validates :first_name, presence: true
    validates :last_name, presence: true

    has_many :appointments,
        primary_key: :id,
        foreign_key: :doctor_id,
        class_name: :Appointment,
        dependent: :destroy

end