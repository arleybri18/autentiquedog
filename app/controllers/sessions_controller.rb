class SessionsController < ApplicationController
    def new
        
    end

    def create
        dog = Dog.find_by(name: params[:session][:name])
        if dog && dog.authenticate(params[:session][:password])
          log_in dog #metodo que esta en el helper se le envia el dog
          redirect_to '/index'
        else
          render 'new'
        end
    end

    def destroy
      log_out
      redirect_to home_path
    end
end