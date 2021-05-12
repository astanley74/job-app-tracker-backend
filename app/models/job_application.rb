class JobApplication < ApplicationRecord
    belongs_to :user
    # validates :date_of_application, :position, :application_status, :current_stage, presence: true
end