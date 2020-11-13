class Api::V1::EntriesController < ApplicationController

    def index
        entries = Entry.all
        render json: entries
    end

    def show
        entry = Entry.find(params[:id])
        render json: entry
    end

    def create
        # byebug
        entry = Entry.create(create_params)
        render json: entry
    end

    def update
        entry = Entry.find(params[:id])
        # byebug
        entry.update(create_params)
        render json: entry
    end

    def destroy
        entry = Entry.find(params[:id])
        byebug
        entry.destroy
        render json: {}
    end

    private

    def create_params
        params.permit(:title, :description, :user_id, :public)
    end

    
end
