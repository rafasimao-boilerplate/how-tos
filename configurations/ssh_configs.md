### Create a SSH alias config

Edit your ssh config: `vim ~/.ssh/config`

And add the hosts followed by the User and HostName:
```
Host alias-to-host1
  User my-user
  HostName host1.example.com

Host alias-to-host2
  User my-user
  HostName host2.example.com
```
