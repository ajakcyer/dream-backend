class Api::V1::LogsController < ApplicationController


    def login
        # find user 
        # byebug
        if params[:username] && params[:password]
            user = User.find_by(username: params[:username])

            if user && user.authenticate(params[:password])
                render json: user
            else
                render json: {}
            end
        end
    end
end