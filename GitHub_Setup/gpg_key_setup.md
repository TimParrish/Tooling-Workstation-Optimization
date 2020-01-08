# Setup a 'verifed' commit using GPG keys on UNIX

Github lists the steps for setting up GPG keys for signing commits but scatters the documentation across several pages. Here are some simple steps to help you get started with GPG keys.

### Creating a new GPG key
* gpg --full-generate-key
* If GPG is not installed on your system add it with your package manager
	* brew install gpg
	* sudo apt-get install gpg
	* sudo yum install gpg
		* This may vary slight based on your operating system
* [Github documentation for creating gpg key](https://help.github.com/articles/generating-a-new-gpg-key/)

### Adding a new GPG key to your account

* gpg --list-secret-keys --keyid-format LONG
* gpg --armor --export '16 digit hash'
* [Github documentation for adding gpg key to your account](https://help.github.com/articles/adding-a-new-gpg-key-to-your-github-account/)

### Add gpg key settings to git global configure
* git config --global user.signingkey '16 digit hash'
* git config --global commit.gpgsign true
* These can be verifed by using the following command to access you git global configure file
	* vim ~/.gitconfig
* [Github documentation for signing commits](https://help.github.com/articles/signing-commits/)

### Test by making your fist commit
* Make first commit
	* When prompted, enter the passphrase you created for the GPG key
	* You should be able to navigate to the repository and see your commit is 'verifed' in a green box

### You should now be setup to sign your commits with a gpg key!