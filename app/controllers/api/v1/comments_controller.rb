class Api::V1::CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        byebug
        comment = Comment.create(comment_params)
    end
end
