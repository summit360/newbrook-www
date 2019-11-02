# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.4.1'

gem 'foreman'
gem 'guard'
gem 'less'
gem 'middleman', '~> 3.4'
gem 'middleman-livereload', '~> 3.3.0'
gem 'rb-fsevent'
gem 'therubyracer' # Less dependency gem "less"

# For faster file watcher updates on Windows:
gem 'wdm', '~> 0.1.0', platforms: %i[mswin mingw]

# Windows does not come with time zone data
gem 'tzinfo-data', platforms: %i[mswin mingw]

gem 'middleman-deploy', '~> 1.0'
gem 'middleman-search_engine_sitemap'

# Middleman Google Analytics
gem 'middleman-google-analytics'

gem 'jquery-middleman'

# Automatically add vendor prefixes to CSS rules
gem 'middleman-autoprefixer'

# Middleman HTML minifier
gem 'middleman-minify-html'
