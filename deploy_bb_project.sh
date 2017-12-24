#!/bin/sh
gencore_mobile_home=/home/jluccisano/work/workspaces/workspace_BB/Gencore_mobile_bb
codename=$gencore_mobile_home/deliverables/Standard/6.0.0/Gencore_mobile_bb
sourceroot=$gencore_mobile_home/res;$gencore_mobile_home/src/main/java
import_api=/home/jluccisano/work/tools/blackberry/net.rim.ejde.componentpack6.0.0_6.0.0.29/components/lib/net_rim_api.jar
classpath=$gencore_mobile_home/bin


rapc -quiet codename=%codename% %codename%.rapc  -sourceroot=%sourceroot% -import=%import_api% %classpath%

bjavaloader -u load  %gencore_mobile_home%\deliverables\Standard\6.0.0\Gencore_mobile_bb.cod



So, there is absolutely nothing special about running the cod compiler.
I have jmIrc running on my BB now.

here is the sequence of actions:
1. Compile normal midp-2.0 midlet with J2ME SDK from Sun
2. set up $WTK_HOME to point to your J2ME install, $RIM to point to
your JDE/MDS/classpath, and $APPNAME to your app name
4. cd to $WTK_HOME/apps/$APPNAME
3. run
PATH=$WTK_HOME/bin:$PATH \
java -jar $RIM/rapc.jar import=$RIM/net_rim_api.jar \
codename=$APPNAME -midlet jad=bin/$APPNAME.jad bin/$APPNAME.jar

Your .cod file will end up in current dir. bin/$APPNAME.jad will be modified to contain all
BB-specific info.

That's it folks!

P.S. Of course - running emulator and all other stuff will require more work,
but I personally don't care enough for now.



