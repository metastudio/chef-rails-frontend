require 'chefspec'

describe 'chef-rails-frontend::monit' do
  let(:chef_run) { ChefSpec::ChefRunner.new  }
  let(:converge) { chef_run.converge described_recipe }

  it 'creates config' do
    expect(converge).to create_file_with_content '/etc/monit/conf.d/nginx.conf', 'pidfile /var/run/nginx.pid'
  end
end
