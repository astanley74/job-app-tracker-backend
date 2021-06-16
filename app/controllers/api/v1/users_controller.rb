class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def index
        @users = User.all
        render json: @users, status: :accepted
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
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'Email already in use' }, status: :not_acceptable
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
    end

    private
        def user_params
            params.require(:user).permit(:email, :password, :first_name, :last_name)
        end

end
