####################################################################################
#                         GENERAL CONFIGURATIONS                                   #
####################################################################################
export PATH=$PATH:$HOME/bin
export HISTSIZE=5000
export HISTFILESIZE=10000
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset
emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵" "🧵" "👓" "🧩")
EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

function mkcd()
{
	mkdir $1 && cd $1
}

export PATH=/opt/homebrew/bin:$PATH


####################################################################################
#                    BASH PROFILE FILE: Here the env variables                     #
####################################################################################


####################################################################################
# JAVA locations
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home/
# Java home that executes an internal script to define where is the java home
# export JAVA_HOME=(/usr/libexec/java_home)
export JAVA_HOME=(/Library/Java/JavaVirtualMachines/jdk1.8.0_331.jdk/Contents/Home)


####################################################################################
# Maven locations
export MAVEN_HOME=/Library/maven/apache-maven-3.8.5
export M2_HOME=$MAVEN_HOME/bin


#####################################################################################
# Gradle locations
export GRADLE_HOME=/Library/gradle/gradle-7.4.2


#####################################################################################
# Android Locatons

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_AVD_HOME=$ANDROID_HOME/tools/emulator
export ANDROID_SDK=$HOME/Library/Android/sdk


######################################################################################
# Path Env Variable only
# export PATH=$JAVA_HOME/jre/bin:$PATH
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$MAVEN_HOME/bin:$PATH
export PATH=$PATH:$GRADLE_HOME/bin:$PATH
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$ANDROID_HOME/bundle-tool
export PATH=$PATH:${JAVA_HOME}/bin

# nvm use stable


#######################################################################################
# Custom User Env Variables
export SAUCE_USERNAME=carlos.valdez
export SAUCE_ACCESS_KEY=c7e29631-9e4e-4574-b4cb-e190206e3900
export SAUCE_BASE_US_URL=https://$SAUCE_USERNAME:$SAUCE_ACCESS_KEY@ondemand.us-west-1.saucelabs.com:443/wd/hub


#######################################################################################



echo "All the .bash_profile settings were applied correctly 😎"
