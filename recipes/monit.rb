include_recipe 'monit::default'

template "/etc/monit/conf.d/nginx.conf" do
  source "nginx.monit.erb"
  notifies :reload, 'service[monit]'
end
