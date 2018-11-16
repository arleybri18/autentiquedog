class DogsController < ApplicationController
    before_action :logged_in_dog, only: [:index]

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
    

#Autorizacion, pregunta si el usuario esta logueado
def logged_in_dog
    unless logged_in?
      redirect_to '/'
    end
  end

    private
    def dogs_params
        params.require(:dog).permit(:name,:password,:image)
    end

    
end
