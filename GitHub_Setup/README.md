# Git/GitHub setup

### Essential Git config

```bash
git config --global user.name "FirstName LastName"
git config --global user.email emailAddressHere
```

Set the default editor to Vim

```bash
git config --global core.editor "vim"
```

Verify the Git settings

```bash
git config --list
```

### Authentication setup

* [Create SSH key and add it to GitHub account](https://github.com/TimParrish/PUBLIC_TOOLING_FILES/blob/master/GitHub_Setup/ssh_key_setup.md)
* [Create GPG key and add it to GitHub account](https://github.com/TimParrish/PUBLIC_TOOLING_FILES/blob/master/GitHub_Setup/gpg_key_setup.md)

### Global .gitignore file

Create a gitingore file specific to your operating system and use case

[GitIgnore File Generator at www.gitignore.io](https://www.gitignore.io/)

Place the created gitignore file in `~/.gitignore_global`

After creating the global gitignore file, add the location to the git config on the machine

```bash
git config --global core.excludesfile ~/.gitignore_global
```
