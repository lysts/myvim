# to install:

    git clone https://github.com/lysts/myvim.git ~/.vim/pack/myvim
    mkdir -p $HOME/.vim/{backups,sessions,swap,undo,spell}
    git -C ~/.vim/pack/myvim submodule init
    git -C ~/.vim/pack/myvim submodule update --remote

# to update git submodule plugins:

    git -C ~/.vim/pack/myvim submodule update --remote

# to add new git-backed plugin:

    git submodule add <git repo url> start/<plugin name>

# to remove new git-backed plugin:

    git rm start/<plugin name>
