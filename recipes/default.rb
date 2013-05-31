include_recipe 'user'
include_recipe 'user::data_bag'

#node.set['user']['user_array_node_attr'] = "app_env_settings/users"
node.set['users'] = node['environment_users']['users']

#remove_accounts = node['app_env_settings']['users_to_remove']
remove_accounts = node['environment_users']['users_to_remove']
remove_accounts.each do |username|
  user_account username do
    action :remove
    ignore_failure true
  end
end

