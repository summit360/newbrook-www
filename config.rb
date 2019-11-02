# frozen_string_literal: true

require_relative './lib/build_cleaner'

set :site_url, 'http://www.newbrook-engineering.co.uk'
set :site_description, 'Metal Fabricators - Crewe Cheshire'

# Custom pages / routes
page 'CNAME', layout: false
page '/sitemap.xml', layout: false
page 'robots.txt', layout: false
page 'humans.txt', layout: false
page '/googlec9c74fc0e30171ac.html', directory_index: false, layout: false

set :url_root, site_url

activate :search_engine_sitemap

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-44053537-1' # Replace with your property ID.
  ga.anonymize_ip = true
end

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

activate :directory_indexes

set :relative_links, true

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'

# Build-specific configuration
configure :build do
  # See lib/build_cleaner.rb
  activate :build_cleaner

  # Ignore less files
  ignore '*.less'

  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Minify HTML on build
  activate :minify_html

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
  activate :search_engine_sitemap
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
  # Optional Settings
  deploy.remote   = 'github'
  deploy.branch   = 'gh-pages'
end
