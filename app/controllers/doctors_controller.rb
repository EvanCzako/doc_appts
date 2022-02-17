class DoctorsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        @doctors = Doctor.all
        render :index
    end

    def show
        @doctor = Doctor.find_by(id: params[:id])
        render :show
    end

    def create
        @doctor = Doctor.new(doctor_params)
        if @doctor.save
            redirect_to doctors_url
        else
            flash[:message] = @doctor.errors.full_messages
            redirect_to doctors_url
        end
    end

    def destroy
        @doctor = Doctor.find_by(id: params[:id])
        if @doctor.destroy
            redirect_to doctors_url
        else
            render plain: "Cannot delete physician"
        end
    end

    private

    def doctor_params
        params.require(:doctor).permit(:first_name, :last_name)
    end

end
