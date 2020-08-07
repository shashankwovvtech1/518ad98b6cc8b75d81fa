class HomeController < ApplicationController
  def index
  	@shows = Show.all
  end

  def search
  	# search_list = []
  	@show = Show.where("show_name LIKE '%#{params[:search]}%'")
  	# shows.each do |show|
  	# 	search_list.append(show)
  	# end
  	@channel = Channel.where("channel_name LIKE '%#{params[:search]}%'")
  end

  def favorite
    debugger
  end
end
