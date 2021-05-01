class HomesController < ApplicationController

    def index
        @homes = Home.all
        render json: @homes
    end 

    def create 
        @home = Home.create(home_params)
        render json: @home
    end  

    def show
        @home = Home.find_by(id: params[:id])
        render json: @home
    end 

    def update
        @home = Home.find_by(id: params[:id])
        @home.update(name: params[:name])
        render json: @home
    end 

    def destroy
        @home = Home.find_by(id: params[:id])
        @home.destroy()
        
    end
    
    private

    def home_params
        params.require(:home).permit(:address, :image, :data, :property_size, :last_sold)
    end
    
end
