oh-my-zsh::theme::seeker
========================

This is my theme which forked by the https://github.com/tonyseek/oh-my-zsh-seeker-theme


Installation
------------

The quickly way:

    curl -L https://raw.github.com/torchingloom/oh-my-zsh-ta-theme/master/install.sh | zsh

Or:

    wget https://raw.github.com/torchingloom/oh-my-zsh-ta-theme/master/install.sh -O - | zsh

Or you can cloning and creating a symbol link by yourself:

    mkdir -p $ZSH_CUSTOM/themes
    cd $ZSH_CUSTOM/themes
    git clone git://github.com/torchingloom/oh-my-zsh-ta-theme.git ta
    ln -s ta/*.zsh-theme .

And edit your `.zshrc`.

    ZSH_THEME=ta
    plugins=(virtualenv-prompt mercurial)

It's easy to upgrade this theme with git:

    cd $HOME/.oh-my-zsh/custom/themes/ta
    git pull --ff-only origin master
