template "/etc/monit/conf.d/nginx.conf" do
  source "nginx.monit.erb"
  notifies :reload, resources(:service => "monit")
end
