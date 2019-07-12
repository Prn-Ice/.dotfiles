# Setting and editing of env variables.

#For exercism
export PATH=~/bin:$PATH

export PATH=/opt/dart-sdk/:$PATH

export GITLAB_API_ENDPOINT=https://git.chigisoft.com/api/v4
export GITLAB_API_PRIVATE_TOKEN=6ptcL4n78vCpkWcoqEsi

#For flutter
export PATH=/opt/flutter/:$PATH

export PATH=~/bin:$PATH
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/havoc/.sdkman"
[[ -s "/home/havoc/.sdkman/bin/sdkman-init.sh" ]] && source "/home/havoc/.sdkman/bin/sdkman-init.sh"
