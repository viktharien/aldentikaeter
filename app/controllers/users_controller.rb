class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :require_user, only: [:show]
    
    def index
       @users = User.all 
    end
    
    def show
       require_same_user(@user)
    end
    
    def new
       @user = User.new 
    end
    
    def create
       @user = User.new(user_params)
       if @user.save
          redirect_to '/' 
       else
           redirect_to '/signup'
       end
    end
    
    
    private
        
        def user_params
           params.require(:user).permit(:first_name, :last_name, :email, :password) 
        end
    
        def set_user
            @user = User.find(params[:id]) 
        end
end
