# RVM bootstrap
require 'rvm/capistrano'
set :rvm_ruby_string, '1.9.3'

# bundler bootstrap
require 'bundler/capistrano'

# main details
set :application, "meuimovelpb.com"
role :web, "meuimovelpb.com"
role :app, "meuimovelpb.com"
role :db,  "meuimovelpb.com", :primary => true

# server details
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :deploy_to, "/var/www/meuimovelpb.com"
set :deploy_via, :remote_cache
set :user, "passenger"
set :use_sudo, false

# repo details
set :scm, :git
set :scm_username, "fvcdaniel"
set :repository, "git://github.com/fvcdaniel/meu-imovel-pb.git"
set :branch, "master"
set :git_enable_submodules, 1

# tasks
namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "Symlink shared resources on each release - not used"
  task :symlink_shared, :roles => :app do
    #run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end

after 'deploy:update_code', 'deploy:symlink_shared'

after :deploy, 'deploy:database'
namespace :deploy do
    task :database, :roles => :app do
        run "cp #{deploy_to}/shared/database.yml #{current_path}/config/"
    end
end