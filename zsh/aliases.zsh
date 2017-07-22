alias cl='clear'
alias reload!='. ~/.zshrc'

alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
alias ......='cd ../../../../../..'

alias vu='vagrant up'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant status'
alias vgs='vagrant global-status'
alias vp='vagrant provision'

alias homestead='function __homestead() { (cd ~/.homestead && vagrant $*); unset -f __homestead; }; __homestead'

alias art='php artisan'

alias dev='cd ~/dev'
alias sites='cd ~/Sites'
