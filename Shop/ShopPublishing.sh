#!/bin/sh
export JAVA_HOME=/home/jitendra/InstalledSoftwares/Java/64/jdk1.8.0_131
export PATH=$PATH:/home/jitendra/InstalledSoftwares/Java/64/jdk1.8.0_131/bin
echo -ne "\033]0;ShopPublishing\007"
/home/jitendra/InstalledSoftwares/jboss-eap-6.4//bin/standalone.sh --server-config=ShopPublishing.xml $*
