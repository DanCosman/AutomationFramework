class SelfAssessmentFormPage < BasePage


  button :submit_button, class: 'btn btn-success'
  textarea :comment_for_job, title: 'Comment for Job Analysis'
  textarea :comment_for_areas, title: 'Comment for Areas of Improvement '
  textarea :comment_for_g_and_a, title: 'Comment for Goals and Accomplishments '
  textarea :comment_for_p_goals, title: 'Comment for Professional Goals'
  textarea :comment_for_professional, title: 'Comment for Professional'
  textarea :comment_for_honest, title: 'Comment for Honest'
  textarea :comment_for_collaborative, title: 'Comment for Collaborative'
  textarea :comment_for_team_player, title: 'Comment for Team Player'
  textarea :comment_for_expert, title: 'Comment for Expert'
  textarea :comment_for_respectful, title: 'Comment for Respectful'

  link :job_analysis_tab, href: '#tab_1'
  link :areas_of_improvement_tab, href: '#tab_3'
  link :goals_and_accomplishments, href: '#tab_2'
  link :professional_goals, href: '#tab_4'
  link :professional, href: '#tab_9'
  link :honest, href: '#tab_10'
  link :collaborative, href: '#tab_11'
  link :team_played, href: '#tab_12'
  link :expert, href: '#tab_14'
  link :respectful, href: '#tab_15'


  def page_loaded_element
    submit_button_element
  end


  def create_self_assessment
    wait_until(5) { job_analysis_tab_element.exists? }
    job_analysis_tab
    self.comment_for_job = String.random 8
    areas_of_improvement_tab
    wait_until(5) { comment_for_areas_element.exists? }
    self.comment_for_areas = String.random 8
    goals_and_accomplishments
    wait_until(5) { comment_for_g_and_a_element.exists? }
    self.comment_for_g_and_a = String.random 8
    professional_goals
    wait_until(5) { comment_for_p_goals_element.exists? }
    self.comment_for_p_goals = String.random 8
    professional
    wait_until(5) { comment_for_professional_element.exists? }
    self.comment_for_professional = String.random 8
    honest
    wait_until(5) { comment_for_honest_element.exists? }
    self.comment_for_honest = String.random 8
    collaborative
    wait_until(5) { comment_for_collaborative_element.exists? }
    self.comment_for_collaborative = String.random 8
    team_played
    wait_until(5) { comment_for_team_player_element.exists? }
    self.comment_for_team_player = String.random 8
    expert
    wait_until(5) { comment_for_expert_element.exists? }
    self.comment_for_expert = String.random 8
    respectful
    wait_until(5) { comment_for_respectful_element.exists? }
    self.comment_for_respectful = String.random 8

    # sleep 15

  end

end

