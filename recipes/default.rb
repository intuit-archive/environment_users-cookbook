include_recipe 'user'
include_recipe 'user::data_bag'

node.set['user']['user_array_node_attr'] = node['environment_users']['users']

node['environment_users']['users_to_remove'].each do |username|
  user_account username do
    action :remove
    ignore_failure true
  end
end
