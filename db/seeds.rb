# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.create(first_name: 'Julius', last_name: 'Hibbert')
Doctor.create(first_name: 'Algernop', last_name: 'Krieger')
Doctor.create(first_name: 'Nick', last_name: 'Rivera')
Appointment.create(time: '9:00:00', date: Date.new(2018,5,9),patient_first_name: 'Sterling', patient_last_name: 'Archer', doctor_id: 1, appointment_type: 'New Patient')
Appointment.create(time: '8:30:00', date: Date.new(2018,5,9),patient_first_name: 'Cyril', patient_last_name: 'Figis', doctor_id: 1, appointment_type: 'Follow-up')
Appointment.create(time: '10:30:00', date: Date.new(2018,5,10),patient_first_name: 'Ray', patient_last_name: 'Gilette', doctor_id: 1, appointment_type: 'New Patient')
Appointment.create(time: '9:30:00', date: Date.new(2018,5,9),patient_first_name: 'Lana', patient_last_name: 'Kane', doctor_id: 2, appointment_type: 'New Patient')
Appointment.create(time: '8:30:00', date: Date.new(2018,5,10),patient_first_name: 'Pam', patient_last_name: 'Poovey', doctor_id: 2, appointment_type: 'Follow-up')