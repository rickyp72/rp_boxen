class people::rickyp72 {
  notify { 'Hello Ricky': }

  case $::hostname {
    'users-Mac': {
	notify { "This is users-Mac": }
    }

    default: {
	notify { "This is the default!": }
   }
 }
}
