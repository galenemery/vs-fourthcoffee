name             'fourthcoffee'
maintainer       'Chef Software, Inc.'
maintainer_email 'galen@getchef.com'
license          'Apache 2.0'
description      'Installs and configures the Fourth Coffee demonstration website'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.16'

depends          'dsc'
depends          'iis'
depends          'windows'