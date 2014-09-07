class FormatsController < ApplicationController
  layout 'formats/short_text'
  def show
    render File.join('formats', params[:format], params[:name]).underscore
  end
end
