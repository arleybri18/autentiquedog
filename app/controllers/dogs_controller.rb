class DogsController < ApplicationController
    def home        
    end

    def index
    end
    
    def new
        @dog = Dog.new
    end
    
    def create
        @dog = Dog.new(dogs_params)
        if @dog.save
          flash[:success] = "Dog successfully created"
          redirect_to home_path
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    

    private
    def dogs_params
        params.require(:dog).permit(:name,:password,:image)
    end
end
