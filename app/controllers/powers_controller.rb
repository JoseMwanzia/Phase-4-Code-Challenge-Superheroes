class PowersController < ApplicationController

    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = Power.find_by(id: parms[:id])
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
end
