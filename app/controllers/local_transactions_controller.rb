class LocalTransactionsController < ContentItemsController
  def show
    @authority = find_authority
  end

protected

  def find_authority
    @content_item.details.authorities.find { |authority|
      authority.slug == params[:authority]
    }
  end
end
