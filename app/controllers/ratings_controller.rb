class RatingsController < ApplicationController
  def create
    current_user.rate movie, rating_score
    render :create, locals: { movie: movie }
  end

  private

  def movie
    @movie ||= Movie.find(params[:movie_id])
  end

  def rating_score
    #  "$("#current_rating<%= movie.id %>").html("<div id="#current_rating<%= movie.id %>> <%= 7 %> </div>");"
    params.require(:rating_score)
  end
end
