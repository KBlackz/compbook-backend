class UsersController < ApplicationController
    
    def login
        user = User.find_by(name: params[:name])

        if user && user.authenticate(params[:password])
            render json: user 
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized     
        end   
    end
    
    
    def signup 
        user_params = params.permit(:name, :password, :interest)

        user = User.create(user_params)
        if user.valid? 
            render json: user, status: :created
        else 
           render json: {errors: ["Username or password incorrect "] }, status: unprocessable_entity  
        end 
    end        

    def show 
        render json: @current_user 
    end
    
    def index 
        users = User.all 
        render json: users
    end    


end
