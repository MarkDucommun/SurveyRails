class SurveysController < ApplicationController
  include SurveyHelper

  def index
    @surveys = Survey.all
  end
  def take
    @survey = Survey.find(params[:id])
  end

  def show
    @survey = current_survey
  end

  def results
    @survey = current_survey
  end

end
