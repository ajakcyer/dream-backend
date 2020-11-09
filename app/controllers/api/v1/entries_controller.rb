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
        byebug
        entry = Entry.create(create_params)
    end

    private

    
end
