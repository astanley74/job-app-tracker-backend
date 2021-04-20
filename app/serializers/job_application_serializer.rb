class JobApplicationSerializer < ActiveModel::Serializer
    attributes :company_name, :date_of_application, :position, :application_status, :current_stage, :notes
    belongs_to :user
end