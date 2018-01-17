class Spree::StaticPagesController < Spree::StoreController

  def privacy_policy
  end

  def about
  end

  def coming_soon
    render layout: false
  end

end
