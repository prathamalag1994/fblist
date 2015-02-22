class WelcomeController < ApplicationController
	require "koala"

	require "fb_graph"


  def index
  	oauth = Koala::Facebook::OAuth.new(ENV["1528582454074095"], ENV["8133e2fc26bb995d7d4eb4d4b6ab7fd9"])
  	oauth_access_token = 'CAACEdEose0cBAE787pCHM1yTx3P8Oa03ZATooKZB2n97ZCFVxxzUzYc77rsxoBt6WuLpOwCs8lZBwQlasfajZCTjTeZAsCCVUioBfn9zcln8jStNZBuz02JA3wkaPJR1rhnx20lvsqVPzhUZCyZAhkPJaGFguVejjzvQlA6NveofyVE6x1r97tBAmP2KzpdwEK5s4EzCu0HB6z7BgZALlwU4QSV78G43yNZAbsZD'

	@graph = Koala::Facebook::API.new(oauth_access_token)
  	@events = @graph.get_connections("me", "events")

  end
end
