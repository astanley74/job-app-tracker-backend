class User < ApplicationRecord
    has_secure_password
    has_many :job_applications
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: { case_sensitive: false }
end
