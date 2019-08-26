# battery plugin

# function battery_display {
# 	BAT_STATE=~/.oh-my-zsh/plugins/zsh-battery-state/battery_state.py
# 	echo `$BAT_STATE` 2>/dev/null
# }
# 
# RPROMPT='$(battery_display)'


# import project to gitlab
gitlab_import() {
    #     Check if user supplied arguments for original_repo_url and new_repo_name
    [ $# -eq 0 ] || [ $# -eq 1 ]  && { echo "Usage: $0 original_repo_url new_repo_name";}

    # Create variables from arguments
    original_repo_url=$1
    new_repo_name=$2

    # Clone original-repo-url
    git clone ${original_repo_url}

    # Switch to new repo
    cd ${new_repo_name}

    # Create repo from new-repo-name
    gitlab project create --name ${new_repo_name}

    # Initialize repo
    git init

    # Replace old origin and set remote
    git remote rename origin old-origin 
    git remote add origin git@git.chigisoft.dev:prince/${new_repo_name}.git

    # add all files to staging
    git add -A

    # commit files
    git commit -m "Initial commit"

    # push files
    git push -u origin master

}


# import project to github
github_import() {
    #     Check if user supplied arguments for original_repo_url and new_repo_name
    [ $# -eq 0 ] || [ $# -eq 1 ]  && { echo "Usage: $0 original_repo_url new_repo_description";}
    
    # Create variables from arguments
    original_repo_url=$1
    new_repo_name=$(echo ${original_repo_url}| cut -d'/' -f 2)
    
    # make a new directory its temporary and its sole purpose is to create a repo using its name
    mkdir ${new_repo_name}
    cd ${new_repo_name}
    hub init
    hub create -d "$2"
    git clone  --bare ${original_repo_url}
    
#     cd into cloned repo
    cd ${new_repo_name}
    echo ${new_repo_name}
    git push --mirror git@github.com:Prn-Ice/${new_repo_name}
    
    ...
    
    rm -rf ${new_repo_name}
}
