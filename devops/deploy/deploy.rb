# config valid only for current version of Capistrano
lock '3.4.0'

set :deploy_to, "/var/www/symfony_demo"
#set :repo_url, 'git@github.com:dkhmel/my_project.git'
set :repo_url, 'git@github.com:dkhmel/my_project.git'

set :stages, %w(prod)

# Symfony console commands will use this environment for execution
set :symfony_env,  "prod"

# Set this to 2 for the old directory structure
set :symfony_directory_structure, 3
# Set this to 4 if using the older SensioDistributionBundle
set :sensio_distribution_version, 5

# symfony-standard edition directories
set :app_path, "app"
set :web_path, "web"
set :var_path, "var"
set :bin_path, "bin"

# The next 3 settings are lazily evaluated from the above values, so take care
# when modifying them
set :app_config_path, "app/config"
set :log_path, "var/logs"
set :cache_path, "var/cache"

set :symfony_console_path, "bin/console"
set :symfony_console_flags, "--no-debug"

# Remove app_dev.php during deployment, other files in web/ can be specified here
set :controllers_to_clear, ["app_*.php"]

# asset management
set :assets_install_path, "web"
set :assets_install_flags,  '--symlink'

# Share files/directories between releases
set :linked_files, []
set :linked_dirs, ["var/logs"]

# Set correct permissions between releases, this is turned off by default
set :file_permissions_paths, ["var"]
set :permission_method, false

set :ssh_options, {
  forward_agent: true,
}