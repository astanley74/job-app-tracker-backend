class User < ApplicationRecord
    has_many :job_applications
    validates :first_name, :last_name, :email, presence: true
end
