class WelcomeController < ApplicationController
	require "koala"

	require "fb_graph"


  def index
  	#oauth = Koala::Facebook::OAuth.new(ENV["1528582454074095"], ENV["8133e2fc26bb995d7d4eb4d4b6ab7fd9"])
  	oauth_access_token = 'CAACEdEose0cBABkdp3JZCDSyZAApRNEZAtPrDcw8Tck3sk1guEUMJ6Bdb0cUVUKmfTeVwbM3HiQpePZCmZB2GhJ124aW9HNvzZB7JwHP4tLFVvQvuFRiKw7VV9ntf7ZB3NBVtZCUHEicbGowmZCu1JtWtGrOott5amZB2GTKJFAiyOAkrqQOzF1QLLSONY3vZAIsCFAruIcTgiuA306IfRWyZCCk4cgwlKDJKaoZD'

	@graph = Koala::Facebook::API.new(oauth_access_token)
  	@friends = @graph.get_connections("me", "events")

  end
end
