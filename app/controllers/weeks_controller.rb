class WeeksController < ApplicationController

  def index
    @weeks = Week.all
  end

  def new
    @week = Week.new
  end

  def create
    @week = Week.new(week_params)
    if @week.save
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @week = Week.find(params[:id])
    @concept = @week.concepts.build
  end

  private
  def week_params
    params.require(:week).permit(:name)
  end
end
