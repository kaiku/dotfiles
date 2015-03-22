# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
install findutils
# Install Bash 4
install bash

# Install wget with IRI support
install wget --enable-iri

# Install more recent versions of some OS X tools
install vim --override-system-vi
install homebrew/dupes/grep

# This failed, will look at later.
#install josegonzalez/homebrew-php/php55

# This formula didn’t work well last time I tried it:
#install homebrew/dupes/screen

# Install other useful binaries
install ack
install pv
install git
install imagemagick --with-webp
install lynx
install node
install pigz
install rename
install tree
install webkit2png
install zopfli
install p7zip

# Install programming tools
install python
install pyenv
install pyenv-pip-rehash
install pyenv-virtualenv
install pyenv-virtualenvwrapper

# Remove outdated versions from the cellar
cleanup
