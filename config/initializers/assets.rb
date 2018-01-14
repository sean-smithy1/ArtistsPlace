# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( payment_details.png )

#Rails.application.config.assets.precompile

# Precompile Vendor JS Assets 
Rails.application.config.assets.precompile += %w( plugins/rs-plugin-5/index.js )
Rails.application.config.assets.precompile += [ 'plugins/rs-plugin-5/fonts/revicons/*' ]
Rails.application.config.assets.precompile += %w( plugins/modernizr.js )
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
