local java_home="/usr/libexec/java_home"
if [[ -r $java_home ]]; then
  export JAVA_HOME=`$java_home 2> /dev/null`
elif [[ -d "$HOME/working/jdk/" ]]; then
  export JAVA_HOME="$HOME/working/jdk"
  PATH="$HOME/working/jdk/bin:$PATH"
fi
