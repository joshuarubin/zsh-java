local java_home="/usr/libexec/java_home"
if [[ -d "$HOME/working/jdk/" ]]; then
  export JAVA_HOME="$HOME/working/jdk"
  path[1,0]="$HOME/working/jdk/bin"
elif [[ -r $java_home ]]; then
  export JAVA_HOME=`$java_home 2> /dev/null`
fi
