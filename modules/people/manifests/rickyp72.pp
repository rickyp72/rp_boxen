class people::rickyp72 {
  notify { 'Hello Ricky': }
  include vagrant

  include osx::dock::autohide

  case $::hostname {
    'users-Mac': {
	notify { "This is users-Mac": }
    }

    default: {
	notify { "This is the default!": }
   }
 }
}
