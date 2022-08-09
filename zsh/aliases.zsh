# helpers
alias l="ls -laF"
alias cl="clear"
alias reload!=". ~/.zshrc"

# lazy
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."
alias ......="cd ../../../../../.."

alias dev="cd ~/dev"
alias sites="cd ~/Sites"

# PHP
alias phpunit="./vendor/bin/phpunit"

# Laravel
alias art="php artisan"
alias homestead="function __homestead() { (cd ~/.homestead && vagrant $*); unset -f __homestead; }; __homestead"

