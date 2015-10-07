require 'gds_api/content_store'

class ContentItemsController < ApplicationController
  def index
  end

  def show
    @content_item = content_store.content_item(content_item_path)
  end

protected

  def content_store
    @content_store ||= GdsApi::ContentStore.new(Plek.current.find("content-store"))
  end

  def content_item_path
    '/' + URI.encode(params[:path])
  end
end
