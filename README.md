# environment-modules

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
3. [Usage](#usage)
4. [Limitations](#limitations)
5. [Contact](#contact)

## Description
-----------
This Puppet module is managing the installation and configuration of environment-modules. 
The modules use Hiera to set variables and serve configuration files. It's tested on Ubuntu 14.04. 



Setup

### The module is doing:

* Installing environment-modules from repo.
* Add lines in /etc/environment-modules/modulepath

### Requirements

* The [stdlib](https://forge.puppetlabs.com/puppetlabs/stdlib) Puppet Library
* The [concat](https://github.com/puppetlabs/puppetlabs-concat) Puppet Module

## Usage

```puppet
include modules
```

### Map Files

To configure using Map Files:
```puppet
modules::paths { 'tools':
  path       => '/opt/tools',
  order       => 01
}
```

###Hiera
Using Hiera:
```yaml
---
modules::paths:
  tools:
    path: '/opt/local/mod'
    order: 01
```

Both examples will add following line inside `/etc/environment-modules/modulepath`
```
/opt/local
```

##Limitations
At the moment it can only write one line into modulepath. 

## Development

This module is a rewriten version of [autofs](https://github.com/dhollinger/autofs-puppet).

## Contact
Simon Skog: [sparco@hackernet.se](mailto:sparco@hackernet.se)

