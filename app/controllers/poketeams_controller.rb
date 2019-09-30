class PoketeamsController < ApplicationController
    def index
        poketeams = Poketeam.all
        render json: poketeams, except:["created_at"], include: [:team, :pokemon]
    end

    def show
        poketeam = Poketeam.find_by(id: params[:id])
        render json: poketeam, except:["created_at"], include: [:team, :pokemon]
    end

end
