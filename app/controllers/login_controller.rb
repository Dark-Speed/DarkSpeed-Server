class LoginController < ApplicationController
  def login
    data = JSON.parse(request.body.read)
    username = data['username']
    password = data['password']
    user = User.find_by(username: username)
    if password == user.password
      data = {
        'password' => "password",
        'port' => "100"
      }
      render json: data
    end
    if password != user.password
      head :forbidden
    end
  end
end
