class DogsController < ApplicationController
    def home        
    end

    def new
        @dog = Dog.new
    end
    
    def create
        @dog = Object.new(dogs_params)
        if @dog.save
          flash[:success] = "Object successfully created"
          redirect_to @dog
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    

    private
    def dogs_params
        params.require(:dogs).permit(:name,:password,:email)
end
