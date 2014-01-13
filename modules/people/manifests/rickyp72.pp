class people::rickyp72 {
  notify { 'Hello Ricky': }
  include vagrant

  # Set the default value (36)
include osx::dock::icon_size

# ... or set your own
class { 'osx::dock::icon_size':
  size => 20
}

  case $::hostname {
    'users-Mac': {
	notify { "This is users-Mac": }
    }

    default: {
	notify { "This is the default!": }
   }
 }
}
