module Api
  module V1
    class PersonajesController < ApplicationController
      #Get character
      def index
        @personajes = Personaje.all
        render json: @personajes.to_json(only: [:nombre,:image])
      end

      #Create character
      def create 
        @personajes = Personaje.new(personajes_params)
        @personajes.save
        render json: @personajes, status: :created
      end

      #Delete character
      def destroy
        @personajes = Personaje.where(id: params[:id]).first
        if @personajes.destroy
          head(:ok)
        else
          head(:unprosessable_entity)
        end
      end

      #Post character 
      def update
        @personajes = Personaje.where(id: params[:id]).first
        if @personajes.update(personajes_params)
          render json: @personajes
        else
          render json: @personajes.errors, status: unprosessable_entity
        end
      end 

      #private params
      private 
      def personajes_params
        params.require(:personaje).permit(:nombre,:edad,:peso,:historia,:peliculas_serie_relacionada,:image)
      end 

    end
  end
end

