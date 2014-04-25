class SessionsController < ApplicationController

  # GET /sessions/new
  def new
  end

  # POST /sessions
  # POST /sessions.json
  def create
    # params

    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to root_url, notice: "Bievenido!!! #{user.email}"
    else
      flash.now[:error] = "Error en credenciales"
      render action: 'new'
    end

  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Hasta la proxima!"
  end


end
