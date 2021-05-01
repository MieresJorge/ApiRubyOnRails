module Api
    module V1
      class PeliculasController < ApplicationController
        #Get character
        def index
          @peliculas = Pelicula.all
          render json: @peliculas.to_json(only: [:nombre,:image])
        end
  
        #Create character
        def create 
          @peliculas = Pelicula.new(personajes_params)
          @peliculas.save
          render json: @peliculas, status: :created
        end
  
        #Delete character
        def destroy
          @peliculas = Pelicula.where(id: params[:id]).first
          if @peliculas.destroy
            head(:ok)
          else
            head(:unprosessable_entity)
          end
        end
  
        #Post character 
        def update
          @peliculas = Pelicula.where(id: params[:id]).first
          if @peliculas.update(personajes_params)
            render json: @peliculas
          else
            render json: @peliculas.errors, status: unprosessable_entity
          end
        end 
  
        #private params
        private 
        def personajes_params
          params.require(:Pelicula).permit(:titulos,:fecha,:image)
        end 
  
      end
    end
  end