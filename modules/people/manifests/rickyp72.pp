class people::rickyp72 {
  notify { 'Hello Ricky': }
  include vagrant


	include osx::dock::dim_hidden_apps

  case $::hostname {
    'users-Mac': {
		class { 'osx::dock::icon_size':
		  size => 20
		}
    }
    'Rickys-MacBook-Pro-2': {
      notify { "This is my Macbook Pro Boxen": }
    }
    default: {
	  notify { "This is the default!": }
   }
   	# ... or set your own
	class { 'osx::dock::icon_size':
	  size => 20
	}
 }

   package {
   	[
   	  'nmap',
   	  'emacs',
   	  ]:
   	  ensure => 'present',
   }
}
