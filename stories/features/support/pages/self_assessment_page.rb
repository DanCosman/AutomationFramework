class SelfAssessmentPage < BasePage

  page_url "#{EnvConfig["base_url"]}#{EnvConfig["self_assessment_path"]}"


  button :start_self_assessment_button, title: 'Start Self Assessment'


  def page_loaded_element
    start_self_assessment_button_element
  end

  def a

  end

end