Global bash aliases
===================

The `.bash_galiases` file contains various aliases and custom functions I'm using extensively while developing. You can easily download them and make sure to load them in your own bash_profile, making all these commands available to your entire system. Just follow the instructions below.


### Install the global aliases

First, download the global aliases file. It will be placed in your user home directory.
```
$ sudo curl https://raw.githubusercontent.com/remipelhate/dotfiles/master/unix/.bash_galiases -o ~/.bash_galiases
```

Now you need to make sure it gets loaded whenever you open your Terminal. To do so, open your `.bash_profile` by running:
```
$ sudo nano ~/.bash_profile
```

and add the following lines to it:
```
if [ -f ~/.bash_galiases ]; then
    . ~/.bash_galiases
fi
```

Save your updated configuration by pressing `ctrl x`, confirm by pressing `y` and `enter`.

Last but not least, reload your bash settings either by restarting Terminal session or by running:
```
$ source ~/.bash_profile
```


### Future updates

Now the aliases have been installed and loaded, you can update them using the following command:
```
$ galias update
```