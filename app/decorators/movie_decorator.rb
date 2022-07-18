# frozen_string_literal: true

class MovieDecorator < Draper::Decorator
  delegate_all

  def average_rating_format
    format('%.1f', rating&.average || 0)
  end
end
