require 'erb'

#############################################################
#	Application
#############################################################

set :application, APP_NAME
set :domain,      APP_URL
set :deploy_to,   "/home/#{domain}/web"

#############################################################
#	Settings
#############################################################

default_run_options[:pty] = true
set :use_sudo, false 

#############################################################
#	Servers
#############################################################
set :user,        domain
set :password,    password
set :ip_address,  ip_address
 
role :app, ip_address
role :web, ip_address
role :db,  ip_address, :primary => true

#############################################################
#	Git
#############################################################

set :scm, :git 
set :repository,  ""


#############################################################
#	Passenger
#############################################################

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end

after :deploy, "deploy:cleanup"

#############################################################
