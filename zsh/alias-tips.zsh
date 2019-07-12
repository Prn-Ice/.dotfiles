# easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# cd places
alias doc="cd ~/Documents/"
alias dz="cd ~/.dotfiles"
alias de="cd ~/Desktop"
alias dq="cd ~/Downloads"






# General
alias c="clear"
alias ls="ls --color"
alias g="git" # Wrapper over git
alias _="sudo"
alias eo="echo"
alias pd="pandoc"
alias yt="youtube-dl"
alias d="cd"
alias rl="curl"
alias how="howdoi"
alias ua="unalias"
alias m="mkdir"
alias to="touch"
alias ki="kill"
alias q="exit"
alias mx="chmod +x"
alias rr="rm -rf"

# Node
alias no="node"

# NPM
alias it="npm init"
alias ig="npm install -g"
alias iis="npm install && npm start"
alias ia="npm add"
alias ir="npm run"
alias ire="npm remove"
alias is="npm start"
alias dev="npm run dev"
alias igl="npm list -g --depth 0"

# Delete things
alias rrpdf="rm -rf *.pdf"

# Git
alias gm="git branch -m" # Rename current branch
alias ger="git checkout -" # Checkout last branch you were on
alias grl="git reset --hard && git clean -df" # Reset to exact state as last commit
alias grhf="git checkout HEAD --" # Git reset single file
alias glo="git log --pretty=oneline --abbrev-commit --graph --decorate"
alias gpm="git push origin master"
alias gfk="git fetch && git reset --hard && git clean -dfx" # Reset repo to clean remote state
alias gsp="git pull --rebase --autostash" # Git stash, pull and apply stash
alias gu="git issues"
alias gdp="git reset --hard HEAD~; git push --force-with-lease" # Delete previous commit locally and remote
alias gpd="git push origin develop"
alias ggh="push -u origin HEAD"
alias gre="git rebase -i HEAD~4"
alias gS="git stash"
alias gqa="git stash apply"
alias gb="git checkout -b"
alias gr="git reset --hard"
alias grc="git rm --cached"
alias ggn="git_add_origin_and_origin_push"
# alias gt="git tag"
alias g:="git push -u origin master"
#alias gu="git commit --amend"
alias ggf="git push -f"
alias g::="git_remote_add_origin_from_active_link"
# alias g="git"
alias gi="git init"
alias gl="git pull"
alias gn="git clone"
alias g.="git add ."
alias ga="git add"
# alias gb="git branch"
alias gg="git push"
#alias gr="git rm"
# alias gf="git fetch"
alias glp="git pull && git push"
alias grao="git remote add origin"
#alias gz="git discard"
#alias gr="git rm --cached -r"

# Undo your last commit, but don"t throw away your changes
alias greset="git reset --soft HEAD^"

# Git Diff
alias gd="git diff"
alias gds="git diff --staged"
alias gdn="git diff --name-only"

# Git Status
alias gs="git status --short"
alias gss="git show --word-diff=color" # See changes made
