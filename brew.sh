#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
# brew install bash
# brew install bash-completion2

# # Switch to using brew-installed bash as default shell
# if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/bash";
# fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install macvim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp
brew install tmux

# # Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
# #brew install exiv2
# brew install git
# brew install git-lfs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
# brew install ssh-copy-id
# brew install tree
# brew install vbindiff
# brew install zopfli

brew install ansible
brew install autoconf
brew install automake
brew install b2-tools
brew install chunkwm
ln -s ~/.chunkwm_plugins /usr/local/opt/chunkwm/share/chunkwm/plugins
brew services start crisidev/chunkwm/chunkwm
brew install curl
brew install docker-machine
brew install docker-machine-driver-scaleway
brew install fasd
brew install ffmpeg
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install hub
brew install gnupg
brew install htop
brew install imagemagick@6
brew install iperf
brew install koekeishiya/formulae/khd
brew services start koekeishiya/formulae/khd
brew install kubernetes-cli
brew install kubernetes-helm
brew install macvim
brew install mtr
brew install nmap
brew install python
brew install python3
brew install rclone
brew install readline
brew install reattach-to-user-namespace
brew install screenfetch
brew install scw
brew install sqlite
brew install terraform
brew install tldr
brew install tmux
brew install vnstat
brew install watch
brew install zsh

# Remove outdated versions from the cellar.
brew cleanup

sudo pip3 install pywal

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L https://bit.ly/janus-bootstrap | bash
