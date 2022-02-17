class AppointmentsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        @doctor = Doctor.find_by(id: params[:doctor_id])
        @appointments = @doctor.appointments.where(date: appointment_params[:appt_date])
        render :index
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            redirect_to "/doctors/#{appointment_params[:doctor_id]}"
        else
            flash[:message] = @appointment.errors.full_messages
            redirect_to "/doctors/#{appointment_params[:doctor_id]}"
        end
    end

    def destroy
        @appointment = Appointment.find_by(id: params[:id])
        
        if @appointment.destroy
            redirect_to "/doctors/#{appointment_params[:doctor_id]}"
        else
            render plain: "Cannot delete appointment"
        end
    end

    private

    def appointment_params
        params.require(:appointment).permit(:doctor_id, :appt_date, :patient_first_name, :patient_last_name, :date, :time, :appointment_type)
    end

end

