class ErrorController < ApplicationController
  def code
    render :text => '', :status => params[:code]
  end
end
