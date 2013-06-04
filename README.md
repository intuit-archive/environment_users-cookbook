# environment_users-cookbook cookbook

# Requirements
* Chef 10.x
* User profile listed in databags as detailed here: https://github.com/fnichol/chef-user

Platform:
* CentOS 6.x
* RHEL 6.x

# Usage
Add this cookbook to your runlist

# Attributes
* node['environment_users']['users'] - databag location where your users to add are listed, for example = "app_env_settings/users", defaults to "users"
* node['environment_users']['users_to_remove'] - list of users  to be removed
# Recipes
## default
Adds or removes users to the system based on environment attributes.

# Author
Author:: Intuit, Inc. (<kevin_young@intuit.com>)
