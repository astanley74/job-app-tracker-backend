class Api::V1::JobApplicationsController < ApplicationController

    def index
        user = User.find(params[:user_id])
        job_applications = user.job_applications
        render json: job_applications
    end

    def create
        if JobApplication.find_by(company_name: job_application_params[:company_name])
            job_application = JobApplication.find_by(company_name: job_application_params[:company_name])
            render json: job_application
        else
            job_application = JobApplication.create(job_application_params)
            render json: job_application
        end
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
            params.require(:job_applicatioin).permit(:company_name, :date_of_application, :position, :application_status, :current_stage, :notes, :user_id)
        end

end
