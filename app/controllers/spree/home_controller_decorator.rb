module Spree
  class HomeController < Spree::StoreController

    helper 'spree/products'
    respond_to :html

    def landing
      @searcher = build_searcher(params.merge(include_images: true))
      @products = @searcher.retrieve_products
    end
  end
end