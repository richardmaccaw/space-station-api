class Api::V1::UsersController < ApplicationController

    def index
    @users = User.all
    render json: @users
    end

    def create
        byebug
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: 'Unable to create user.'}, status: 400
        end
    end

    private

    def user_params
        params.require(:user).permit([:email_address, passes:["risetime"]])
    end
end

