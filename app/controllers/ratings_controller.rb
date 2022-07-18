# frozen_string_literal: true

class RatingsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.rate movie, rating_score
    render :create, locals: { movie: }
  end

  private

  def movie
    @movie ||= Movie.find(params[:movie_id])
  end

  def rating_score
    params.require(:rating).require(:score)
  end
end
