source ~/.zplug/init.zsh

# Theme
# zplug romkatv/powerlevel10k, as:theme, depth:1

# Cd
zplug "b4b4r07/enhancd", use:init.sh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

