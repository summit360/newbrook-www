# frozen_string_literal: true

desc 'Build/compile the site'
task :build do
  sh 'bundle exec middleman build --clean'
end

desc 'Start the development server'
task :server do
  sh 'bundle exec foreman start'
end

desc 'Deploy to Github'
task :deploy do
  sh 'bundle exec middleman deploy --build-before'
end
