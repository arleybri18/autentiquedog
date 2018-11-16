class PagesController < ApplicationController
    before_action :logged_in_dog, only: [:team, :about]
    def home
    end

    def team
    end

    def about
    end

    #Autorizacion, pregunta si el usuario esta logueado
    def logged_in_dog
        unless logged_in?
          redirect_to '/'
        end
      end
end