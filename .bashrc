# set alias to make more user-friendly
alias rm='rm -i'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# set the default database
export PGDATABASE=postgres

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

### Adds Hub-linux
export PATH="$PATH:$HOME/Program_Files/hub-linux/bin/"

### Load Hub Linux bash completion
if [ -f $HOME/Program_Files/hub-linux/etc/hub.bash_completion.sh ] ; then
     . $HOME/Program_Files/hub-linux/etc/hub.bash_completion.sh
fi

# alias hub as git
eval "$(hub alias -s)"

# use conda auto activate
source ~/Program_Files/conda-auto-env/conda_auto_env.sh
source ~/Program_Files/conda-auto-env/conda_auto_env_remote.sh


# don't create .pyc and .pyo files
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE

# added by Miniconda3 installer
export PATH="/home/curtis/Program_Files/miniconda3/bin:$PATH"
source activate py35
