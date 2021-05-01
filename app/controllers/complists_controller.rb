class ComplistsController < ApplicationController

    def index
        @complists = Complists.all
        render json: @complists
    end 

    def create 
        @complist = Complist.create(complist_params)
        render json: @complist
    end  

    def show
        @complist = Complist.find_by(id: params[:id])
        render json: @complist
    end 

    def update
        @complist = Complist.find_by(id: params[:id])
        @complist.update(name: params[:name])
        render json: @complist
    end 

    def destroy
        @complist = Complist.find_by(id: params[:id])
        @complist.destroy()
        
    end
    
    private

    def complist_params
        params.require(:complist).permit(:user_id, :home_id, :user_note)
    end

end
