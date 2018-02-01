# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( payment_details.png )

#Rails.application.config.assets.precompile


# Standalone Coming_soon Page
# Remove After Launch
Rails.application.config.assets.precompile += %w( plugins/jquery.min.js )
Rails.application.config.assets.precompile += %w( plugins/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( plugins/jquery.countdown/*.js plugins/jquery.countdown/*.css )
Rails.application.config.assets.precompile += %w( plugins/magnific-popup/jquery.magnific-popup.min.js plugins/magnific-popup/*.css )
Rails.application.config.assets.precompile += %w( plugins/owlcarousel2/*.js plugins/owlcarousel2/*.css )
Rails.application.config.assets.precompile += %w( css/*.scss )
Rails.application.config.assets.precompile += %w( js/coming.soon.config.js js/template.js )
Rails.application.config.assets.precompile += %w( css/style.css css/typography-default.css css/skins/light_blue.css css/animations.css )
Rails.application.config.assets.precompile += %w( plugins/bootstrap/css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( plugins/jquery.countTo.js )
Rails.application.config.assets.precompile += %w( plugins/waypoints/jquery.waypoints.min.js )
Rails.application.config.assets.precompile += %w( plugins/hover/hover.css plugins/hover/hover-min.js)
Rails.application.config.assets.precompile += %w( plugins/jquery.parallax-1.1.3.js )
Rails.application.config.assets.precompile += %w( plugins/jquery.validate.js )


# Precompile Vendor JS Assets 
Rails.application.config.assets.precompile += %w( plugins/rs-plugin-5/index.js )
Rails.application.config.assets.precompile += %w( plugins/modernizr.js )
Rails.application.config.assets.precompile += %w( plugins/magnific-popup/jquery.magnific-popup.min.js plugins/magnific-popup/*.css )
Rails.application.config.assets.precompile += %w( plugins/isotope/isotope.pkgd.min.js plugins/isotope/imagesloaded.pkgd.min.js )
Rails.application.config.assets.precompile += %w( theproject/template.js )

Rails.application.config.assets.precompile += %w( fontello/css/fontello.css )
Rails.application.config.assets.precompile += %w( plugins/rs-plugin-5/css/layers.css )
Rails.application.config.assets.precompile += %w( plugins/rs-plugin-5/css/navigation.css )
Rails.application.config.assets.precompile += %w( plugins/rs-plugin-5/css/settings.css )

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
