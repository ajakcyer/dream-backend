class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)

        render json: user
    end
    
    def show
        # user = User.find(params[:id])
        # render json: user
        # byebug
        user = User.find(params[:id])
        render json: user
    end

    def user_params
        params.permit(:username, :name, :age, :password)
    end
end
