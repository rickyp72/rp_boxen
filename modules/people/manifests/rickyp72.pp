class people::rickyp72 {
  notify { 'Hello Ricky': }
  include vagrant
  include sublime_text_2
  include skype
  #include iterm2
  include evernote
  include firefox
  include chrome
  include googledrive
  include dropbox
  # include vmware_fusion
  include virtualbox
  include dnsmasq::disable

   class { 'osx::global::key_repeat_delay':
    delay => 200
  }

  class { 'osx::global::key_repeat_rate':
    rate => 400
  }

    class dnsmasq::disable inherits dnsmasq {
    Service['dev.dnsmasq'] {
      ensure => stopped,
    }
  }
  
}
