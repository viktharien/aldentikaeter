class UsersController < ApplicationController
    
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
    
end
