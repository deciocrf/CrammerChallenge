class Crammer::ClassesController < ApplicationController
    # layout "application"
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.    

    before_action :authenticate_user!
    protect_from_forgery with: :exception

    helper_method :class_params
 
    def index                
        @crammer_classes = Crammer::Class.where(user: current_user.id) 
    end

    def new
        @crammer_classes = Crammer::Class.new
    end

    def create
        @crammer_classes = Crammer::Class.new(class_params)
        @crammer_classes.user = current_user
        if @crammer_classes.save
            redirect_to classes_path, message: "Class successfully created."
        else
            redirect_to new_class_path, message: "Error creating new class."
        end
    end

    def destroy
        @crammer_classes = Crammer::Class.find(params[:id])        
        if @crammer_classes.destroy
            redirect_to classes_path, message: "Class successfully deleted."
        else
            redirect_to classes_path, message: "Error deleting class."
        end
    end

    
    




private 
    def class_params        
        params.require(:crammer_classes).permit(:name, :id)
    end
end