task :copy_template do
  sh "cp source/assets/css/application-template.css.less source/assets/css/application.css.less", verbose: false
end

desc "Build/compile the site"
task :build => :copy_template do
  sh "bundle exec middleman build --clean"
end

desc "Start the development server"
task :server do
  sh "bundle exec foreman start"
end