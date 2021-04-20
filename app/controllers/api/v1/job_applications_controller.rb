class Api::V1::JobApplicationsController < ApplicationController

    def index
    end

    def create
    end

    def show
    end

    def destroy
    end

    private
        def job_application_params
            params.require(:job_applicatioin).permit(:company_name, :date_of_application, :position, :application_status, :current_stage, :notes, :user_id)
        end

end
