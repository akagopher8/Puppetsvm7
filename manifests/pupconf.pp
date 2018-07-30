node "svm7.llnl.gov" {

  package { 'git':
    ensure => "latest"
  }

  file { '/etc/hosts':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    show_diff => "true",
    source => '/etc/puppet/manifests/hosts'
  }
  file { '/etc/resolv.conf':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "644",
    show_diff => "true",
    source => '/etc/puppet/manifests/resolv.conf'
  }
  file { 'etc/ssh/sshd_config':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "600",
    source => 'etc/puppet/mandifests/sshd_config'
  }
} # End node mynode.example.com
