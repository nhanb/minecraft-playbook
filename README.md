This sets up the latest version of Spigot server.

This is not exactly the most robust playbook to do the job (heh, understatement of the century),
and has only been tried on Digital Ocean's debian x64 droplet (the 2GB RAM one). I will probably
refactor it when that's necessary, but not any time soon :P

# Usage

``` bash
$ cp hosts.example hosts
# edit hosts file's 2nd line to match your server's IP/domain
$ ansible-playbook plays/site.yaml
```

And your sever should be up and running from the default port!

The server jar is stored at `/root/prod/spigot.jar`. Everything else you need is in `/root/prod/`
as well.

This playbook runs `/root/prod/tmux.sh` to kick off a spigot server inside a tmux session named
`prod`. Simply run this script again to attach to that existing session.


# Pitfalls

Don't use spigot's `/restart` command. I'm still trying to figure it out.

# License

See LICENSE file.
