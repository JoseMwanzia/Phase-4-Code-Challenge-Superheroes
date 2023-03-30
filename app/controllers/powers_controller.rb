class PowersController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = Power.find_by(id: params[:id])
        if power 
            render json: power,status: :ok
        else
            render json: {error: "Power not found"}, status: :not_found
        end
    end

    def update
        power = Power.find(params[:id])
        if power.valid?
        power.update(user_params)
        render json: power, status: :created
        else 
            render json: {errors: power.errors}, status: :unauthorized
        end
    end

    private 

    def user_params
        params.permit(:name, :description)
    end

    def render_not_found_response
        render json: {error: "Power not found"}, status: :not_found
    end
end
