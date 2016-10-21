helpers do

  def registration_errors(params)

    if User.find_by(email: params[:user]['email'])
      return "That e-mail is already taken."
    elsif User.find_by(username: params[:user]['username'])
      return "That username is already taken."
    end

  end

end
