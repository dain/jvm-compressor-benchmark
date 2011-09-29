#!/bin/sh
 
echo "About to run minimal sanity test on 3 input files, couple of codecs"

java -server -cp lib/japex/\* \
-server \
-XX:+UseCompressedOops \
-Xms400M \
-Xmx400M \
-Djava.awt.headless=true \
-Djapex.runsPerDriver=1 \
-Djapex.warmupTime=30 \
-Djapex.runTime=5 \
-Djapex.numberOfThreads=1 \
-Djapex.reportsDirectory=reports/snappy \
-Djapex.plotGroupSize=5 \
-Djapex.inputDir="testdata/canterbury" com.sun.japex.Japex \
 cfg/tests-snappy.xml

echo "Done!";
