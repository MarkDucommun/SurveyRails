module SurveyHelper
  def current_survey
    @survey ||= Survey.find_by_id(params[:id])
  end

end
