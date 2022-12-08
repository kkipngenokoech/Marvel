class RequestsController < ApplicationController
    def new
    end
    def create
        redirect_to root_path, notice: "Your request has been received successfully"
    end
end
