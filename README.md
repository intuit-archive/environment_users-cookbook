+[![Build Status](https://secure.travis-ci.org/intuit/environment_users-cookbook.png)](http://travis-ci.org/intuit/environment_users-cookbook)

# environment_users-cookbook cookbook

# Requirements
* Chef 10.x
* If user profiles are listed in json files in the databag called users, as detailed here: https://github.com/fnichol/chef-user, the user will be created with those properties, otherwise the user will be created with the default values.

Platform:
* CentOS 6.x
* RHEL 6.x

# Usage
Add this cookbook to your runlist

# Attributes
* ```node['environment_users']['users']``` - list of users to add, for example = ['fred', 'barney'] - default []

* ```node['environment_users']['users_to_remove']``` - list of users to be removed, for example = ['wilma', 'betty'] - default []

# Recipes
## default
Adds or removes users to the system based on environment attributes.

# Author
Author:: Intuit, Inc. (<kevin_young@intuit.com>)
