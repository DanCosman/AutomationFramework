class LoginPage < BasePage
  include Login
  include Users


  page_url "#{EnvConfig["base_url"]}#{EnvConfig["dashboard_path"]}"


  text_field :username, id: 'Username'
  text_field :password, id: 'Password'
  button :submit, type: 'submit'


  def page_loaded_element
    username_element
  end

  def login(user_type)
    user = get_user_info(user_type)
    self.username = user.username
    self.password = user.password
    submit
  end

end
