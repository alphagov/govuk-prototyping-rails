require 'gds_api/content_store'

class ContentItemsController < ApplicationController
  def index
    @content_store_url = content_store_url
  end

  def show
    @content_item = content_store.content_item(content_item_path)
  end

protected

  def content_store
    @content_store ||= GdsApi::ContentStore.new(content_store_url)
  end

  def content_item_path
    '/' + URI.encode(params[:path])
  end

  def content_store_url
    Plek.current.find("content-store")
  end
end
