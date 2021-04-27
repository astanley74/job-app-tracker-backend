class JobApplicationSerializer < ActiveModel::Serializer
    attributes :id, :company_name, :date_of_application, :position, :application_status, :current_stage, :notes, :user_id
end