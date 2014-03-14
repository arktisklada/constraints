class VacationController < ApplicationController

  def index
    @vacations = Vacation.all
  end

  def view
    @vacation = Vacation.find_by_slug(params[:vacation])
  end

end