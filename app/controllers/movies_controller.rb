# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        render :index, locals: { categories:, movies:, category_id: params[:category_id] }
      end
      format.js { render :index, locals: { movies:, category_id: params[:category_id] } }
    end
  end

  def show
    render :show, locals: { movie: }
  end

  private

  def filter_params
    params.permit(:category_id).compact_blank
  end

  def movies
    @movies ||= Movie.where(filter_params)
                     .order(id: :desc)
                     .page(params[:page])
  end

  def movie
    @movie ||= Movie.friendly
                    .find(params[:id])
                    .decorate
  end

  def categories
    @categories ||= Category.all
  end
end
