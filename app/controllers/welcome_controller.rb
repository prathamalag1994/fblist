class WelcomeController < ApplicationController
	require "koala"

	require "fb_graph"


  def index
  	oauth = Koala::Facebook::OAuth.new(ENV["1528582454074095"], ENV["8133e2fc26bb995d7d4eb4d4b6ab7fd9"])
  	oauth_access_token = 'CAACEdEose0cBACvE9Iijf1WdZB2AT3uH7NFh44Y3iY9y4Fiu9Ij1E3IfGvptKoH9m2G4PZCOo7EZBefaJQksBBu7P4seI5BNQdJ7wC50DstwZCIPiXqjZBaW8Tsm9tJXad0EbM0yZAfJxZBSVfbYYKo0xDZClkKtBUKtoYv8EbKlyL4bkpDwYOYvKwlh102GwGlh8G1WrGrbs3Qi13yBVHC15Hk1W6XvoXUZD'

	@graph = Koala::Facebook::API.new(oauth_access_token)
  	@events = @graph.get_connections("me", "events")

  end
end
