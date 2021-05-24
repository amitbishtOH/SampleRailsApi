class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        @users = Owner.all
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = Owner.new(user_params)

        if @user.save
            render json: @user, status: 201
        else
            render json: { error: 'Unable to create Owner.'}, status: 400
        end
    end
   

    def update
        if @user
            @user.update(user_params)
            render json: { message: 'Updated'}, status: 200
        else
            render json: { error: 'Unable to update.'}, status: 400
        end
    end

    def destroy
        if @user
            @user.destroy
            render json: { message: 'Deleted'}, status: 200
        else
            render json: { error: 'Unable to delete.'}, status: 400
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

    def find_user
        @user = Owner.find(params[:id])
    end

end
