node.set['user'] = node['environment_users']['users']

node['environment_users']['users_to_remove'].each do |username|
  user_account username do
    action :remove
  end
end

include_recipe 'user'
include_recipe 'user::data_bag'
