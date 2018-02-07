## OSX initial setup

### Get a proper file system

Case-insensitive file systems are bad for you.
Reformat your drive to a case-sensitive one:

Open [Recovery mode](https://support.apple.com/en-us/HT201314) by booting while holding Command-R,
use disk utility to reformat your drive to `Mac OS Extended (Case-sensitive, Journaled)`,
and use the installer to reinstall your OS over the web.

If you don't want to wait several hours for the download to complete,
you can [create a bootable installer](https://support.apple.com/en-us/ht201372) ahead of time,
and run it from the Startup Manager which is accessed by booting while holding the Option key.

Note: The Steam game platform refuses to run on case sensitive file systems.

### Get Git

* Open the terminal and type `xcode-select --install` to trigger the installation of scode's dev tools.

This is also sometime required when upgrading OSX.

### Install these dot files:

```bash
git clone https://github.com/danyshaanan/.home.git ~/.home
bash ~/.home/init.sh
```

### Run the OSX init setup script:

```bash
bash ~/.home/bin/scripts/osx_settings.sh
```

### Install brew, brew-cask, nvm, and rvm:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```bash
brew tap caskroom/cask
```

```bash
# remove old node version with http://tinyurl.com/removenode
git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm && git checkout `git describe --abbrev=0 --tags` && bash
nvm install stable && nvm alias default stable
# required `[ -s ~/.nvm/nvm.sh ] && . ~/.nvm/nvm.sh` is included in .home
```

```bash
curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ignore-dotfiles
rvm install 2.2.1
# required `[ -s ~/.rvm/scripts/rvm ] && . ~/.rvm/scripts/rvm` is included in .home
```

### Main installations

```bash
brew install micro
brew install git tig unrar youtube-dl htop
brew install tree rename trash wget curl source-highlight
brew install fzf ag moreutils watch gnu-tar
brew cask install java
```

```bash
brew cask install iterm2 atom keepassx google-chrome
brew cask install jq quicklook-json qlprettypatch quicklook-csv betterzipql
brew cask install betterzip bettertouchtool 
brew cask install visual-studio-code
brew cask install teensy arduino # ftdi drivers also required
```

```bash
#npm i -g normit pm2 fuck-you
npm i -g grunt-cli serve npm-check yarn
```

### Atom customizations - APM - atom package manager
```bash
apm install linter linter-eslint language-arduino editorconfig language-x86asm
apm install highlight-selected file-icons file-types react
apm install synced-sidebar pretty-json
apm install git-log

apm install fonts
# settings => packages => fonts => settings => font-family = FiraCode
# cat ~/.home/conf/atom.stylesheet.ligatures.less >> ~/.atom/styles.less
```

Run `missing-installations` to find out which of these packages are missing.

### More installations

```bash
brew install bash-completion git-extras gpg ack
brew install ssh-copy-id sshfs vim p7zip
brew install ruby ack python nginx
```

```bash
brew cask install chromium
```
