# First create the user, use the 'user' type.
# See http://reductivelabs.com/trac/puppet/wiki/TypeReference#id229
user { "fabiantheblind":
   groups => 'pi',
   comment => 'This user was created by Puppet',
   ensure => 'present',
   managehome => 'true',
   shell => '/bin/bash',
}

# The managed_home above creates the home dir, but we also need
# the .ssh dir, use the file type
# see http://reductivelabs.com/trac/puppet/wiki/TypeReference#file
# file { "/home/fabiantheblind/.ssh":
#     ensure => 'directory',
#     require => User['fabiantheblind'],
#     owner => 'fabiantheblind',
#     mode => '700',
# }

# file { '/etc/sudoers':
#     owner => 'root',
#     group => 'root',
#     mode => 0440,
#     source => "puppet:///modules/sudo/sudoers",
# }

# # now load up the key...
# # see http://reductivelabs.com/trac/puppet/wiki/TypeReference#ssh-authorized-key
# ssh_authorized_key { "fabiantheblind-rsa-key":
#    ensure => 'present',
#    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDvBsUqfgqvmDYy+aQTP1hXU/b3fS0I1lL4rkJ1s1jApbocb0EAb9/F+saVx+oi9ukUgkT3bcOSv0kqgOzTUSV5a/SgK9a2Jm4z+CJVDMTbCiraga0QO1fZT0YEal25lQgHFbuPsxN6E/fFKWjQSp22lnjvaM1QSaW0c66WcXrD8AnyqBfoRuYKwTOh9Zsm7jnmdJjVC/K/++gJaysbqdq9tXyUqBcU4JtEgp+kco+pLlgZ395CZqB5TLGAxbVgYap0Fc0qFs0Fm0tJ+EI8aA3IQLtwrws8EsaiOvUgb7lssCrwErpVCcEpVWGkJL7AiB5ky7gopFeh0bLOiMa0YTVZ',
#    type => 'rsa',
#    user => 'fabiantheblind',
#    require => File["/home/fabiantheblind/.ssh"],
# }


package { "git":
    ensure => "latest"
}

package { "vim":
    ensure => "latest"
}

# package { "htop":
#     ensure => "latest"
# }





# package { "motion":
#     ensure => "latest"
# }

# file { '/etc/default/motion':
#     owner => 'root',
#     group => 'root',
#     mode => 0640,
#     source => "puppet:///modules/motion/default-motion",
# }

# file { '/etc/motion/motion.conf':
#     owner => 'motion',
#     group => 'motion',
#     mode => 0640,
#     source => "puppet:///modules/motion/motion.conf",
# }




# package { "python-virtualenv":
#     ensure => "latest"
# }

# file { '/home/fabiantheblind/.bashrc':
#     owner => 'fabiantheblind',
#     group => 'fabiantheblind',
#     mode => 0644,
#     source => "puppet:///modules/environment/.bashrc",
# }

file { '/home/fabiantheblind/.vimrc':
    owner => 'fabiantheblind',
    group => 'fabiantheblind',
    mode => 0644,
    source => "puppet:///modules/environment/.vimrc",
}
file { '/home/pi/.vimrc':
    owner => 'pi',
    group => 'pi',
    mode => 0644,
    source => "puppet:///modules/environment/.vimrc",
}

# file { '/home/fabiantheblind/.gitconfig':
#     owner => 'fabiantheblind',
#     group => 'fabiantheblind',
#     mode => 0644,
#     source => "puppet:///modules/environment/.gitconfig",
# }




# user { "webapp":
#    comment => 'This user was created by Puppet',
#    ensure => 'present',
#    managehome => 'true',
#    shell => '/bin/bash',
# }

# file { "/home/webapp/.ssh":
#     ensure => 'directory',
#     require => User['webapp'],
#     owner => 'webapp',
#     mode => '700',
# }

# file { "/home/webapp/.ssh/config":
#     ensure => 'directory',
#     require => User['webapp'],
#     owner => 'webapp',
#     mode => '600',
#     source => "puppet:///modules/webapp/ssh-config",
# }

# file { "/home/webapp/apps":
#     ensure => "directory",
#     require => User['webapp'],
#     owner => 'webapp',
#     group => 'webapp',
#     mode => '744',
# }

# file { "/home/webapp/virtualenvs":
#     ensure => "directory",
#     require => User['webapp'],
#     owner => 'webapp',
#     mode => '700',
# }






# package { "uwsgi":
#     ensure => "1.2.3+dfsg-5"
# }

# package { "uwsgi-plugin-python":
#     ensure => "1.2.3+dfsg-5"
# }

# file { '/etc/uwsgi/apps-available/uwsgi_emperor.ini':
#     owner => 'root',
#     group => 'root',
#     mode => 0644,
#     source => "puppet:///modules/uwsgi/uwsgi_emperor.ini",
# }

# file { '/etc/uwsgi/apps-enabled/uwsgi_emperor.ini':
#    ensure => 'link',
#    target => '/etc/uwsgi/apps-available/uwsgi_emperor.ini',
# }

# file { '/home/webapp/apps/reload_emperor':
#    owner => 'webapp',
#    group => 'webapp',
#    mode => 0644,
#    source => "puppet:///modules/uwsgi/reload_emperor",
# }






# package { "nginx":
#     ensure => "1.2.1-2.2"
# }

# file { '/etc/nginx/nginx.conf':
#    owner => 'root',
#    group => 'root',
#    mode => 0644,
#    source => "puppet:///modules/nginx/nginx.conf",
# }



# class {'ztaskd::server':}
