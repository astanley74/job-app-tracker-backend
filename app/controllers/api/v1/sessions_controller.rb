class Api::V1::SessionsController < ApplicationController
    skip_before_action :authorized, only: [:create]

end