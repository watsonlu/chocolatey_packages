# chocolatey_packages Cookbook
A cookbook that installs a list of chocolatey_packages through attributes.

##Usage

Include the default recipe in your runlist and set the attributes

##Attributes

###Required
```ruby
node['chocolatey_packages']['packages'] = {'googlechrome': '55.0.2883.87', 'notepadplusplus.install': '7.2.2', 'winrar' : 'latest', 'git' : '2.11.0'}
```


This will be a hash with the `packagename : version` as the elements. If you don't care about version, set it to `latest` and the cookbook will download the latest version.

###Optional

* `node[chocolatey_packages']['source']` - The source to download from, defaults to community feed
* `node[chocolatey_packages']['ignore_failure']` - Whether or not to ignore failures, defaults to false

##See Also

* The cookbook [Packages](https://supermarket.chef.io/cookbooks/packages) does something similar on Linux. Dosen't work with Chocolatey though.