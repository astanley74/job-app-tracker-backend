class CreateJobApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :job_applications do |t|
      t.string :company_name
      t.date :date_of_application
      t.string :position
      t.boolean :application_status
      t.string :current_stage
      t.string :notes

      t.timestamps
    end
  end
end
