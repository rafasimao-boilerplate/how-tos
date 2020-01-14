# Debian Setup - First Steps

Now you might want to setup some common stuff into your new Debian Os, like Zsh, google chrome, keyboard settings, etc.

### Setting up the apt/source.list
Edit the /etc/apt/sources.list:
```
# See sources.list(5) for more information, especialy
# Remember that you can only use http, ftp or file URIs
# CDROMs are managed through the apt-cdrom tool.
deb http://http.us.debian.org/debian stable main contrib non-free
deb http://non-us.debian.org/debian-non-US stable/non-US main contrib non-free
deb http://security.debian.org stable/updates main contrib non-free

# Uncomment if you want the apt-get source function to work
#deb-src http://http.us.debian.org/debian stable main contrib non-free
#deb-src http://non-us.debian.org/debian-non-US stable/non-US main contrib non-free
```

### Installing Zsh

[Instalation link](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH#zsh)

1. Install it: `sudo apt-get install zsh`;
2. Verify: `zsh --version`, expected result: `zsh 5.1.1` or above;
3. Make it your default shell: `chsh -s $(which zsh)`;
4. Log out and login back again to use your new default shell;
5. Test that it worked with `echo $SHELL`. Expected result: `/bin/zsh` or similar;
6. Test with `$SHELL --version`. Expected result: `zsh 5.1.1` or similar.

**To install Oh My Zsh:**

[Installation link](https://github.com/robbyrussell/oh-my-zsh#getting-started)

1. Install `curl` or `wget`;
2. Install `git`;
3. Install *Oh My Zsh*

Via curl:
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
Or via wget:
```sh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

### Keyboard setup

You may need to fix your keyboard settings. If you are using a brazilian keyboard with 'ç' then just run this command:

```sh
setxkbmap -model abnt2 -layout br
```

We may want to add it to your /etc/.profile file to run everytime you start your OS.
