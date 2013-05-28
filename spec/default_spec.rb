require 'chefspec'

describe 'chef-rails-frontend::default' do
  let(:chef_run) { ChefSpec::ChefRunner.new platform:'ubuntu', version:'12.04' }
  let(:converge) { chef_run.converge described_recipe }

  before do
    chef_run.node.set[:ohai][:plugin_path] = ''
  end

  it 'includes nginx::source' do
    expect(converge).to include_recipe 'nginx::source'
  end

  it 'includes nginx::monit' do
    expect(converge).to include_recipe "#{described_cookbook}::monit"
  end

  it 'includes nginx::logrotate' do
    expect(converge).to include_recipe "#{described_cookbook}::logrotate"
  end
end
