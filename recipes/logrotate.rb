template "/etc/logrotate.d/nginx" do
  source "nginx.logrotate.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end
