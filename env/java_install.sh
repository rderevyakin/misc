sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
java -version
cd ~
mkdir -p java
mkdir -p java/tool
cd java/tool
curl -O http://apache-mirror.rbc.ru/pub/apache/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz
tar -xzf apache-maven-3.3.1-bin.tar.gz
rm apache-maven-3.3.1-bin.tar.gz

file="$HOME/.zsh.after/settings.zsh"
if [[ ! -f $file ]]; then
  touch $file
fi
echo 'export JAVA_HOME="/usr/lib/jvm/java-8-oracle/"' >> ~/.zsh.after/settings.zsh
echo 'export PATH="$PATH:$JAVE_HOME/bin/"' >> ~/.zsh.after/settings.zsh
echo 'export PATH="$PATH:$HOME/java/tool/apache-maven-3.3.1/bin/"' >> ~/.zsh.after/settings.zsh
