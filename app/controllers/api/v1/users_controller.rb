class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        # if User.find_by(email: user_params[:email])
        #     user = User.find_by(email: user_params[:email])
        #     render json: user
        # else
        #     user = User.create(user_params)
        #     render json: user
        # end
        @user = User.create(user_params)
        if @user.valid?
            render json: @user, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
    end

    private
        def user_params
            params.require(:user).permit(:email, :password, :first_name, :last_name)
        end

end
