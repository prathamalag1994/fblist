class WelcomeController < ApplicationController
	require "koala"

	require "fb_graph"


  def index
  	oauth = Koala::Facebook::OAuth.new(ENV["1528582454074095"], ENV["8133e2fc26bb995d7d4eb4d4b6ab7fd9"])
  	oauth_access_token = 'CAACEdEose0cBAH4AwtcIndQGD4e9e5Y5E0SQ7ZBwUV6K85rgVvx1kh9ni94TL8zrygTK1g6D04CwlC177bETFunvZAHlzrTOyE90MkHKmmGIZBBaHcbp48yfGXS2Io42AZAYkNpfyzpEmwVTpSQLULII4ECLHIfkU65RHeUeDMZBvgOCv28L4qZAwXij2fUZBfx3kEil9SvwPpD7ImMglBvErF61kxLrk0ZD'

	@graph = Koala::Facebook::API.new(oauth_access_token)
  	@events = @graph.get_connections("me", "events")

  end
end
