# Ensure procps package is installed to provide pkill command

package { 'procps':
  ensure => installed,
}



# Kills a process named killmenow

exec { 'pkill killmenow' :
  path     => '/usr/bin:/bin:/usr/sbin:/sbin',
  command  => 'pkill killmenow',
  provider => 'shell'
  require  => Package['procps'],
    }
