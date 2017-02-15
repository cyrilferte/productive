class TachesController < ApplicationController
    def index
      if params[:theme]
        @taches = Tache.where(category: params[:theme])
      else
        @taches = Tache.all.reverse
      end
    end

    def show
        @tache = Tache.find(params[:id])
    end

    def new
        @tache = Tache.new
    end
  
    def create
        @tache = Tache.new(tache_params)
        @tache.user = current_user
        if @tache.save
            redirect_to taches_path
        else
            render :new
        end
    end

    def edit
        @tache = Tache.find(params[:id])
    end
  
    def update
        @tache = Tache.find(params[:id])
        if @tache.update(tache_params)
            redirect_to taches_path
        else
            render :edit
        end
    end

    def destroy
        @tache = Tache.find(params[:id])
        @tache.destroy
        redirect_to taches_path
    end

    private

    def tache_params
        params.require(:tache).permit(:name, :theme, :date, :timedo, :etat, :more)
    end
    
end
