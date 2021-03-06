property :server_options, Hash, required: true

default_action :install

action :install do
  gusztavvargadr_windows_features '' do
    features_options new_resource.server_options['features']
  end

  gusztavvargadr_windows_native_packages '' do
    native_packages_options new_resource.server_options['native_packages']
  end
end
