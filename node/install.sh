echo 'Installing node dependencies...'

# Setup n
export N_PREFIX="`brew --prefix`/n"
# [ ! -d "/opt/homebrew/n" ] && sudo mkdir -p /opt/homebrew/n && sudo chown -R $(whoami) /opt/homebrew/n/
[[ ! $(which npm) ]] && n lts

[[ $( npm -g ls neovim | grep neovim ) ]] && npm install -g neovim

[[ ! $( npm -g ls yarn | grep yarn ) ]] && npm install -g yarn

[[ ! $( npm -g ls commitizen | grep commitizen ) ]] && npm install -g commitizen
[[ ! $( npm -g ls cz-conventional-changelog | grep cz-conventional-changelog ) ]] && npm install -g cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc


