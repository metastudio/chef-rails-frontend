default[:nginx][:client_max_body_size] = '100m'
default[:nginx][:init_style] = 'init'

default[:application][:name] = 'example.com'
default[:application][:socket] = '/tmp/example.com'
default[:application][:url] = 'example.com'
default[:application][:redirect_urls] = []
