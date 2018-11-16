module SessionsHelper
    
    def log_in(dog) #recibe el dog enviado desde el controlador
        #Este metodo modifica la cookie implantada por rails
        session[:dog_id] = dog.id
    end

    def current_dog
        if session[:dog_id]
            @current_dog = @current_dog || Dog.find_by(id:session[:dog_id])
        end
    end

    def logged_in? #devuelve true o false
        !current_dog.nil?
    end
    
    #modifica la cookie quitando el campo dog_id
    def log_out
        session.delete(:dog_id)
        @current_dog = nil
    end
end
