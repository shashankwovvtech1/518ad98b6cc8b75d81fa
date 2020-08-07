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
    if params[:checked] == "true"
      fav_show = FavoriteShow.find_by("show_id = ? AND user_id = ?",params[:id], current_user.id)
      FavoriteShow.create(show_id: params[:id], user_id: current_user.id, favorite: params[:checked])
      
    else
      fav_show = FavoriteShow.find_by("show_id = ? AND user_id = ?",params[:id], current_user.id)
      fav_show.update(favorite: params[:checked])
    end

  end
end
