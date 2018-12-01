class Api::UsersController < ApplicationController
  skip_before_action :authenticate_request, only: %i[login register]

  def login
    authenticate(params["username"], params["password"])
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def register
    @user = User.create(user_params)
   if @user.save
    response = { message: 'User created successfully'}
    render json: response, status: :created
   else
    render json: @user.errors, status: :bad
   end
  end

  def authorize_token
    @user_id = JsonWebToken.decode(request.headers["Authorization"])["user_id"]
    @user = User.find(@user_id)
    render json: @user
  end


  private

  def authenticate(username, password)
    command = AuthenticateUser.call(username, password)
    if command.success?
      @user = User.find(JsonWebToken.decode(command.result)[:user_id])
      if @user.account_type == "MANAGER"
        render json: {
          access_token: command.result,
          message: 'Login Successful',
          user: ManagerSerializer.new(@user)
        }
      elsif @user.account_type == "EMPLOYEE"
        render json: {
          access_token: command.result,
          message: 'Login Successful',
          user: EmployeeSerializer.new(@user)
        }
      end
    else
      render json: { error: command.errors }, status: :unauthorized
    end
   end


  def user_params
    params.permit(:username, :email, :password, :first_name, :last_name, :account_type)
  end

  def token_params
    params.permit(:token)
  end


end
