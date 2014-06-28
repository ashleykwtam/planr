class ConceptsController < ApplicationController

  def new 
    @concept = Concept.new
  end

  def create
    @week = Week.find(params[:week_id])
    @concept = @week.concepts.build(concept_params)

    if @concept.save
      redirect_to week_url(@week)
    else
      redirect_to week_url(@week), :notice => "Cannot be blank"
    end
  end

  private
  def concept_params
    params.require(:concept).permit(:name)
  end

end
