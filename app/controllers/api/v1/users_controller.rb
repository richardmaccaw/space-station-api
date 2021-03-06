class Api::V1::UsersController < ApplicationController

    def index
    @users = User.all
    render json: @users
    end

    def create
        @user = User.new(user_params)
        if @user.save
            PassByMailer.passBy(@user).deliver_now
            render json: @user
        else
            render json: {error: 'Unable to create user.'}, status: 400
        end
    end

    private

    def user_params
        params.require(:user).permit([:email_address, :passes])
    end
end


