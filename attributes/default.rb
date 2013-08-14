##This recipe downloaded from github glacier-cmd and configures it automatically.
#YOu will need to change your AWS keys in attributes ( using roles or changing your attributes files permanently - see chef documentation)
#Author : Dmitry Lavrinenko nonflet@gmail.com

#Required libraries are glaciercorecalls and boto, use version 2.6.0 or newer.

default[:glaciercmd][:access_key]="somekey"
default[:glaciercmd][:secret_key]="somesecretkey"
default[:glaciercmd][:sdb_access_key]="sdbsomekey"
default[:glaciercmd][:sdb_secret_key]="sdbsomesecretkey"
default[:glaciercmd][:domainname]="test"