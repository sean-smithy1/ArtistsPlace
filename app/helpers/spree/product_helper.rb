module Spree
  module ProductHelper
    def product_artists(product)
      t=Spree::Taxonomy.find_by_name('Artist')
      artists=product.taxons.where(taxonomy_id: t.id)
      artists.empty? ? 'Pending' : artists.map { |a| a.name }.join(", ")
    end
  
    def product_size(product)
      dimensions = product.property('size')
      dimensions.nil? ? 'unknown' : dimensions
    end

    def product_image_link(product)
      images=product.images
      images.empty? ? '#' : images.first.attachment.url(:product)
    end

    def product_short_description(product)
      s_description=product.description
      s_description.nil? ? '' : s_description.truncate(50)
    end
  end
end