class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
    end

    def show
    end

    def destroy
    end

    private
        def user_params
        end

end