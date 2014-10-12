class WelcomeController < ApplicationController
  def index
    render params[:path] if params[:path]
  end
end
