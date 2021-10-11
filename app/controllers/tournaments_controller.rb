class TournamentsController < ApplicationController
  def new
  end

  def create
    names = params[:names].reject(&:blank?)
    @tournament = Tournament.generate(names)
  end
end
