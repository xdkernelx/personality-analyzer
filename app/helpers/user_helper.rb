helpers do

  def registration_errors(params)
    email_regex = /^[a-zA-Z0-9]+.?[a-zA-Z0-9]*@[a-zA-Z0-9]*.?[a-zA-Z0-9]*.[a-zA-Z]{2,}.?[a-zA-Z]{2,}$/
    username_regex = /^[a-zA-Z0-9]{6,}$/

    p params[:user]['username']

    if User.find_by(email: params[:user]['email'])
      return "That e-mail is already taken."
    elsif User.find_by(username: params[:user]['username'])
      return "That username is already taken."
    elsif !email_regex.match(params[:user]['email'])
      return "Invalid email. Please try again."
    elsif params[:user]['username'].length < 7
      return "Username must be at least 6 characters."
    elsif !username_regex.match(params[:user]['username'])
      return "Invalid username. Alphanumeric characters only."
    end

  end

end
