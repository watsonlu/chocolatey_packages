node['chocolatey_packages']['packages'].each do |package, version|
  if version != 'latest'
    chocolatey_package package do
      version version
      source node['chocolatey_packages']['source']
      ignore_failure node['chocolatey_packages']['ignore_failure']
      action :install
    end
  else
    chocolatey_package package do
      source node['chocolatey_packages']['source']
      ignore_failure node['chocolatey_packages']['ignore_failure']
      action :install
    end
  end
end
