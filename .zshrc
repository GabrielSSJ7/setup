# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# source ~/code/zsh-autocomplete/zsh-autocomplete.plugin.zsh
fpath=(/home/luffy/code/zsh-completions/src $fpath)


# The following lines were added by compinstall

#zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
#zstyle ':completion:*' matcher-list '' '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
#zstyle :compinstall filename '/home/luffy/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000000000
SAVEHIST=1000000000000
bindkey -v
# End of lines configured by zsh-newuser-install
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. ~/.asdf/asdf.sh

alias wakevpn="sudo openvpn --config ~/vpn/gabriel.luz.ovpn"
alias v="nvim"
alias vim="nvim"
alias rc="bundle exec rails c"
alias vibbra-api-staging='ssh -i "~/code/vibbra/deploy_key.pem" ubuntu@ec2-52-14-12-138.us-east-2.compute.amazonaws.com'
alias vibbra-api-prod='ssh -i "~/code/vibbra/deploy_key.pem" ubuntu@ec2-3-16-242-57.us-east-2.compute.amazonaws.com'
alias gitlab-vibbra='ssh -i ~/code/vibbra/gitlab.pem ubuntu@ec2-54-87-158-146.compute-1.amazonaws.com'
alias admin-vibbra-prod='ssh -i "~/code/vibbra/deploy_key.pem" ubuntu@ec2-3-16-251-246.us-east-2.compute.amazonaws.com'
alias event_type="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"
alias copytds-ssh="ssh -i '~/code/copytds/copytds-sp.pem' ubuntu@ec2-54-232-129-135.sa-east-1.compute.amazonaws.com"
alias sshpeopleandquality="ssh peopleandq@ssh.peopleandquality.com.br"
alias vpnwake="openvpn --config ~/vpn/gabriel.luz.ovpn"

export GIT_EDITOR=nvim
export GTK_MODULES="canberra-gtk-module"
export PATH=$PATH:/usr/bin/chromedriver

#pulseaudio --start
bindkey -v

alias setx='xmodmap ~/.Xmodmap'
alias setkeybr='setxkbmap -layout br'
alias setup2Monitors='xrandr --output DisplayPort-0 --auto --right-of HDMI-A-0 &'
alias rotateAocLeft='xrandr --output HDMI-A-0 --rotate left'
alias bers='bundle exec rails s'
alias berc='bundle exec rails c'
alias bergs='bundle exec rails g serializer'
alias ys='yarn serve'
alias newTask='git switch homol; git pull origin homol; rm -rf node_modules; rm yarn.lock; yarn; git switch -c '
alias sb='yarn storybook'
alias syncDev='git switch development; git pull origin development; rm -rf node_modules yarn.lock; yarn'
alias addComponentShadcn='npx shadcn-vue@latest add'

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export GITHUB_PACKAGES_TOKEN=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
export GITHUB_USERNAME=GabrielSSJ7
export BUNDLE_RUBYGEMS__PKG__GITHUB__COM=$GITHUB_USERNAME:$GITHUB_PACKAGES_TOKEN

