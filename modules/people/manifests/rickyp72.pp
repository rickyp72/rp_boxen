class people::rickyp72 {
  notify { 'Hello Ricky': }

  case $::hostname {
  #   'users-Mac': {
  #   	include vagrant
  # 	    include osx::dock::dim_hidden_apps
		# class { 'osx::dock::icon_size':
		#   size => 20
		# }
		  #  package {
	   # 	[
	   # 	  'nmap',
	   # 	  'emacs',
	   # 	  ]:
	   # 	  ensure => 'present',
	   # }
    }

    'Rickys-MacBook-Pro-2': {
      notify { "This is my Macbook Pro Boxen": }
    }
    default: {
	  notify { "This is the default!": }
   }
 }
}
