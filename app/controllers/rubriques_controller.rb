class RubriquesController < ActionController::Base
    before_filter :only => [:index, :edit, :show, :update, :new, :create, :destroy]

    def index
        @rubriques = Rubrique.paginate(:page => params[:page])
    end

    def edit
        @rubrique = Rubrique.find(params[:id])
    end

    def show
        @rubrique = Rubrique.find(params[:id])
    end

    def update
        @rubrique = Rubrique.find(params[:id])
        if @rubrique.update_attributes(params[:rubrique])
            redirect_to root_path
        else
            render "edit"
        end
    end

    def new
        @rubrique  = Rubrique.new
        @title = "Add rubrique"
    end

    def create
        @rubrique = Rubrique.new(params[:rubrique])
        if @rubrique.save
            redirect_to root_path, :flash => { :success => "Add rubrique is ok!" }
        else
            @title = "Add Rubrique"
            render 'new'
        end
    end

    def destroy
        @rubrique = Rubrique.new(params[:id])
        @rubrique.destroy
        redirect_to root_path, :flash => { :success => "Rubrique deleted!" }
    end

end
