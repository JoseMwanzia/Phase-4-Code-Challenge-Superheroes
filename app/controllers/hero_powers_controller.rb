class HeroPowersController < ApplicationController
    def create
        hero_power = HeroPower.create(hero_power_params)
        render json: hero_power, status: :created
    end

    # def create
    #     if params[:user_id]
    #       user = User.find(params[:user_id])
    #       item = user.items.create(items_params)
    #     end
    #       render json: item, status: :created
    #   end
    private 

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
