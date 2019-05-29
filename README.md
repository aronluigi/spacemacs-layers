# spacemacs-layers
Warm

https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.org#transient-states
```
transient.el:1088:1:Warning: Alias for `transient--original-buffer' should be declared before its referent
```

OSX Emacs install

```shell
brew tap d12frosted/emacs-plus && \
brew install emacs-plus --HEAD --with-jansson --with-modern-icon --with-dbus --with-mailutils

brew tap homebrew/cask-fonts && brew cask install font-source-code-pro

# Monikube & docker
brew cask install minikube

brew install \
    coreutils \
    ack \
    direnv \
    node \
    aspell \
    git \
    git-flow \
    haskell-stack \
    ruby \
    go \
    r \
    scala \
    sbt

# NodeJS & JavaScript tools
npm install -g \
    vmd \
    tern \
    js-beautify \
    eslint \
    babel-eslint \
    eslint-plugin-react \
    jshint \
    js-yaml

# Haskell tools
cabal update
cabal install \
    apply-refact \
    hlint \
    stylish-haskell \
    hasktags \
    hoogle \
    ghc-mod \
    intero

# Python tools
pip install \
    flake8 \
    autoflake \
    hy

# Ruby tools
gem install pry
```
#### Fonts
https://github.com/domtronn/all-the-icons.el#resource-fonts

#### Scala
https://ensime.github.io/build_tools/sbt/#install



```shell
# go your home directory, or wherever you want .emacs.d
cd ~

# (optional) move any existing .emacs.d out of the way
mv .emacs.d .emacs.d.BACKUP

git clone https://github.com/syl20bnr/spacemacs.git .emacs.d
cd .emacs.d/private
git clone --recursive git@github.com:aronluigi/spacemacs-layers.git +leodev

cp +abingham/dot.spacemacs ~/.spacemacs
# ...edit ~/.spacemacs as necessary, e.g. for ycmd paths, etc...
```
