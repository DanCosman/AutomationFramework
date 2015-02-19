class DashboardPage < BasePage

  page_url "#{EnvConfig["base_url"]}"

  link :feedback_button, text: 'Feedback'
  link :logout_button, text: 'Sign out'


  def page_loaded_element
    feedback_button_element
  end

end