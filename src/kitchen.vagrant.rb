require "#{File.dirname(__FILE__)}/vagrant"

VagrantMachine.defaults(
  'providers' => {
    'virtualbox' => {},
    'hyperv' => {},
  },
  'no_synced_folders' => true
)

VagrantProvider.defaults(
  'memory' => 4096,
  'cpus' => 2
)

deployment = VagrantDeployment.new(
  File.dirname(__FILE__),
  'environment' => 'kitchen.chef',
  'tenant' => 'local',
  'hostmanager' => false,
  'machines' => {
    'default' => {
    },
  }
)
deployment.configure
