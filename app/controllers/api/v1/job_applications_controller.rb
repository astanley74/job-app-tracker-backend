class Api::V1::JobApplicationsController < ApplicationController

    def index
        job_applications = JobApplication.all
        render json: job_applications
    end

    def create
            job_application = JobApplication.create(job_application_params)
            render json: job_application
    end

    def show
        job_application = JobApplication.find_by(id: params[:id])
        render json: job_application
    end

    def destroy
        job_application = JobApplication.find_by(id: params[:id])
        job_application.destroy
    end

    private
        def job_application_params
            params.require(:job_application).permit(:company_name, :date_of_application, :position, :application_status, :current_stage, :notes, :user_id)
        end

end
