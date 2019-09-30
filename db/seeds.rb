    require 'faker'
    require 'securerandom'
    require 'rest-client' 
    require'pry'

    Team.delete_all
    Pokemon.delete_all
    Poketeam.delete_all

    pokemon_api = RestClient.get "https://pokeapi.co/api/v2/pokemon/?limit=151"
    pokemon_objects=JSON.parse(pokemon_api)
    pokemon_objects["results"].each do |pokemon|
        pokemon.each do |key, value|
            if key==="name" 
            
            name=value
            api_image = RestClient.get "https://pokeapi.co/api/v2/pokemon/#{name}"
            pokemon_object = JSON.parse(api_image)
            images = pokemon_object["sprites"]
            front_image = images["front_default"] 
            back_image = images["back_default"]  
            experience = pokemon_object["base_experience"]
            type= pokemon_object["types"][0]["type"]["name"]
            Pokemon.create(
                name: pokemon["name"],
                image: front_image,
                experience: experience,
                poketype: type
            )
     end
    end
    end

     
    teams_name = [
      'Team 1',
      'Team 2',
      'Team 3',
      'Team 4'
    ]
     
    team_collection = []
     
    teams_name.each do |name|
      team_collection << Team.create(name: name, user_id:0)
    end
     

Team.first.pokemons.push(Pokemon.fifth, Pokemon.find_by(id: (Pokemon.last.id-1)), Pokemon.find_by(id: (Pokemon.last.id-2)), Pokemon.find_by(id: (Pokemon.last.id-3)), Pokemon.find_by(id: (Pokemon.last.id-4)), Pokemon.find_by(id: (Pokemon.last.id-5)))
Team.second.pokemons.push(Pokemon.first, Pokemon.find_by(id: (Pokemon.last.id-11)), Pokemon.find_by(id: (Pokemon.last.id-12)), Pokemon.find_by(id: (Pokemon.last.id-13)), Pokemon.find_by(id: (Pokemon.last.id-14)), Pokemon.find_by(id: (Pokemon.last.id-15)))
Team.third.pokemons.push(Pokemon.second, Pokemon.find_by(id: (Pokemon.last.id-21)), Pokemon.find_by(id: (Pokemon.last.id-22)), Pokemon.find_by(id: (Pokemon.last.id-23)), Pokemon.find_by(id: (Pokemon.last.id-24)), Pokemon.find_by(id: (Pokemon.last.id-25)))
Team.fourth.pokemons.push(Pokemon.third, Pokemon.find_by(id: (Pokemon.last.id-31)), Pokemon.find_by(id: (Pokemon.last.id-32)), Pokemon.find_by(id: (Pokemon.last.id-33)), Pokemon.find_by(id: (Pokemon.last.id-34)), Pokemon.find_by(id: (Pokemon.last.id-35)))

