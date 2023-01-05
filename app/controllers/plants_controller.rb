class PlantsController < ApplicationController
    #Get /plants
    def index
        plants = Plant.all 
        render json: plants       
    end

    #Show/Get /plants/:id
    def show
        plant = Plant.find(params[:id])
        render json: plant
    end 

    #Create/Post /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end 

    #Private
    private 

    def plant_params
        params.permit(:name, :image, :price)
    end 

end
