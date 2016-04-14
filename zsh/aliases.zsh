alias reload!='. ~/.zshrc'

alias vu='vagrant up'
alias vh='vagrant halt'
alias vs='vagrant status'
alias vp='vagrant provision'

alias homestead='function __homestead() { (cd ~/.homestead && vagrant $*); unset -f __homestead; }; __homestead'
