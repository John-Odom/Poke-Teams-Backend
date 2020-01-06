class TeamsController < ApplicationController
    def index
        teams = Team.all
        render json: teams, include:[:pokemons]   
    end

      def show
        team = Team.find_by(id: params[:id])
        pokemons = team.pokemons
        render json: team, include:[:pokemons]  
        # {id: team.id, name: team.name, pokemons: team.pokemons}
      end

      def create
        team = Team.new(name: params["name"], user_id: params["user_id"])
        team.pokemons.push(Pokemon.find_by(id: params["pokemons"].first["id"]))
        team.pokemons.push(Pokemon.find_by(id: params["pokemons"].second["id"]))
        team.pokemons.push(Pokemon.find_by(id: params["pokemons"].third["id"]))
        team.pokemons.push(Pokemon.find_by(id: params["pokemons"].fourth["id"]))
        team.pokemons.push(Pokemon.find_by(id: params["pokemons"].fifth["id"]))
        team.pokemons.push(Pokemon.find_by(id: params["pokemons"].last["id"]))      
        team.save
        render json: {id: team.id, name: team.name, pokemons: team.pokemons}
      end
end
