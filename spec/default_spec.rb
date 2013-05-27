require 'chefspec'

describe 'chef-rails-frontend::default' do
  let(:chef_run) { ChefSpec::ChefRunner.new.converge 'chef-rails-frontend::default' }

  it 'includes nginx::source' do
    expect(chef_run).to include_recipe 'nginx::source'
  end

  it 'includes nginx::monit' do
    expect(chef_run).to include_recipe 'chef-rails-frontend::monit'
  end
end
