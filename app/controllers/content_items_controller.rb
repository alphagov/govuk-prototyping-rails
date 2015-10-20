require 'gds_api/content_store'

class ContentItemsController < ApplicationController
  rescue_from GdsApi::HTTPForbidden, with: :error_403
  before_filter :load_content_item, :only => :show

  def index
    @content_store_url = content_store_url
  end

  def show
  end

protected

  def load_content_item
    if content_item = content_store.content_item(content_item_path)
      @content_item = content_item
    else
      render text: 'Not found', status: :not_found
    end
  end

  def content_item_path
    '/' + URI.encode(params[:path])
  end

  def content_store
    @content_store ||= GdsApi::ContentStore.new(content_store_url)
  end

  def content_store_url
    Plek.current.find("content-store")
  end
end
