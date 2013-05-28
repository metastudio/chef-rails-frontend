require 'chefspec'

describe 'chef-rails-frontend::logrotate' do
  let(:chef_run) { ChefSpec::ChefRunner.new  }
  let(:converge) { chef_run.converge described_recipe }

  it 'creates config' do
    expect(converge).to create_file_with_content '/etc/logrotate.d/nginx', '/var/log/nginx/*.log'
  end
end
