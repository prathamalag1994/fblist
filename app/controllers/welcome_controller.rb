class WelcomeController < ApplicationController
	require "koala"

	require "fb_graph"


  def index
  	oauth = Koala::Facebook::OAuth.new(ENV["1528582454074095"], ENV["8133e2fc26bb995d7d4eb4d4b6ab7fd9"])
  	oauth_access_token = 'CAACEdEose0cBAKZCqm7LvyMqw5DWQVEN9XKHG3L39jBgLn6HWqwoVUVhMmav05Vz14DX9EZBsuIvUtVBRPWGCMNqiS2gTZCYlUePctqDMzNxrifhQVjQuTMQN1R8y5lxxV2pnI4QrQ7P7qFoPf8eZCoHUW37sI4Er5h2L43vrULnfA0Ho8ogaAmAEsFd91KMUKcAvYaIq63Ej4uX91WGQV0WAXdHyb8ZD'

	@graph = Koala::Facebook::API.new(oauth_access_token)
  	@events = @graph.get_connections("me", "events")

  end
end
