class User < ApplicationRecord

    def show
        @user = User.find_by(id: params[:id])
        if @user
            render json: @user
        else 
            render json: {error: 'User not found.'}, status: 404
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: 'Unable to create user.'}, status: 400
    end

    private

    def user_params
        params.require(:user).permit([:first_name, :last_name, :email_address, :longitude, :latitude])
    end

end
