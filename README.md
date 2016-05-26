# net_roles

This is an example set of recipes for working with the Arista Networks EOS cookbook for Chef.

## Requires

- Arista device (or vEOS) running 4.14 or greater.
- Chef 12.6 or greater client for RedHat/CentOS installed on EOS
- The Ruby client for eAPI (rbeapi) c1.6 or higher installed on EOS
- eos cookbook for Chef

## Local use with Chef Zero

Example:
```
chef-client -z --disable-config -o ‘recipe[eos],recipe[net_roles::veos_config]’
```
